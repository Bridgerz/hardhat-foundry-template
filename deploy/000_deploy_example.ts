import { HardhatRuntimeEnvironment } from "hardhat/types"
import { DeployFunction } from "hardhat-deploy/types"

const func: DeployFunction = async function ({ ethers, deployments }: HardhatRuntimeEnvironment) {
  const [owner] = await ethers.getSigners()

  const contractDeployment = await deployments.deploy("Example", {
    from: owner.address,
    args: [],
  })
  console.log("🚀 Example deployed to:", contractDeployment.address)
}

export default func
func.tags = ["EXAMPLE"]
