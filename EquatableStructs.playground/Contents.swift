struct packStruct: Equatable
{
    var packName: String
    var packDescription: String
    var packTitle: String

    static func ==(lhs: packStruct, rhs: packStruct) -> Bool
    {
        return lhs.packName == rhs.packName &&
            lhs.packDescription == rhs.packDescription &&
            lhs.packTitle == rhs.packTitle
    }
}

let pack = packStruct(packName: "1", packDescription: "1", packTitle: "1")
let anotherPack = packStruct(packName: "2", packDescription: "2", packTitle: "2")

let pack1 = [pack, pack, pack]
let pack2 = [pack, pack, pack]
let pack3 = [pack, pack, anotherPack]

pack == anotherPack
pack1 == pack2
pack1 == pack3

