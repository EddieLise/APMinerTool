HelperBase = oo.class({
    executors = {
        -- ["ip"] = executor
    }
})

function HelperBase:setExecutor(context, executor)
    local ip = context:miner():ip()
    self.executors[ip] = executor
end

function HelperBase:getExecutor(context)
    local ip = context:miner():ip()
    if self.executors[ip] == nil then
        self.executors[ip] = self:newExecutor(context)
    end
    return self.executors[ip]
end

function HelperBase:makeRequest(context)
    try(function()
        self:getExecutor(context):exec()
    end):catch(function(ex)
        utils.debugInfo('HelperBase:makeRequest', ex:toString())
        -- exit
        context:miner():setStat('failed:' .. context:stepName() .. ':' .. ex.message)
		context:setCanYield(true)
        context:setStepName("end")
    end)
end

function HelperBase:makeResult(context, response, stat)
    utils.debugReqInfo('HelperBase:makeResult', context, response, stat)
    try(function()
        self:getExecutor(context):exec(response, stat)
    end):catch(function(ex)
        utils.debugInfo('HelperBase:makeResult', ex:toString())
        -- exit
		context:miner():setStat('failed:' .. context:stepName() .. ':' .. ex.message)
		context:setCanYield(true)
        context:setStepName("end")
	end)
end
