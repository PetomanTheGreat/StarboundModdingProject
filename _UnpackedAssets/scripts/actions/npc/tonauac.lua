function blessPlayer(args, board)
  local seed = math.floor(os.time() / args.rotation)
  math.randomseed(seed)
  
  local blessing = args.blessings[math.random(1,#args.blessings)]
  world.sendEntityMessage(args.entity, "applyStatusEffect", blessing, args.duration, entity.id());
  return true
end
