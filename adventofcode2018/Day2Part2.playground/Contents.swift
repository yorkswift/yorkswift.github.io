import Foundation

func findCommonLetters(_ boxIds: Set<String>) -> String {
    
    let mirrorBoxIds = boxIds
    
    var foundCommon : Set<Character> = []
    
    if let firstBoxId = boxIds.first(where : {
        boxId in
        
        //let stringLength = boxId.count
        
        if let firstMirrorFound = mirrorBoxIds.first(where: {
            morrorId in
            
            if(boxId != morrorId){
               
                let common = NSOrderedSet(array: Array(boxId)).intersects(NSOrderedSet(array: Array(morrorId))
                
                 return common
              
                
//                if(common.count == stringLength - 1){
//
//                    foundCommon = common
//                    print(boxId,morrorId, common.count)
//
//                    return true
//                }
                
            }
            
            return false
            
        }) {
            print(firstMirrorFound)
            return true
        }
        
         return false
        
    }){
       print(firstBoxId)
        return String(foundCommon)
    }
    
    return "Not Found"
}

let testBoxIds : Set = ["abcde","fghij","klmno","pqrst","fguij","axcye","wvxyz"]

let testLetters = findCommonLetters(testBoxIds)

print(testLetters)

let boxIds : Set = ["ymdrcyapvwfloiuktanxzjsieb","ymdrwhgznwfloiuktanxzjsqeb","ymdrchguvwfloiuktanxmjsleb","pmdrchgmvwfdoiuktanxzjsqeb","ymdrfegpvwfloiukjanxzjsqeb","ymdrchgpvwfloiukmanazjsdeb","ymdsnhgpvwflciuktanxzjsqeb","lmdrbhrpvwfloiuktanxzjsqeb","ymdrwhgpvwfloiukeanxzjsjeb","ymdrchgpvpfloihktanszjsqeb","omdrchgpvwflokuktanazjsqeb","kmsrchgpvwfloiuktanxqjsqeb","ymdrchopvwzloiustanxzjsqeb","omdrchgpvwfloiuktawxtjsqeb","ymdrchgpvwfroiukhanozjsqeb","ymdrchgpvwfloikktanyzosqeb","ymdrchgpvwfioiuktaexzjsqea","ymdrcngpvwfloiuktanxzjsamb","ymdrchgpqwfaoiuktanxxjsqeb","ymdrcmgpvwflziuktakxzjsqeb","ymdrchguvwsloiuktanxzjsqen","ymdrchppowfloiuvtanxzjsqeb","ymdrcngpvwflyiukkanxzjsqeb","ymdrcbgpvwfloiukjanxzjspeb","ymdrchgpvwflopuktanxzosseb","ygdrchgpvwfloiukxanxcjsqeb","ymdrchgpvwfloauktanuzjsqei","ymerchgpvwfloiumtanxzjsqet","ymdlcegpvwfloiuktbnxzjsqeb","ymdrclgpvwfloiukyanxzjlqeb","ymdrchgpvwhmoiuktanxijsqeb","ymdrchgpwrfloiuktanxdjsqeb","ymdbcwgpvwfloiuktanxzusqeb","ymgrchgphwfloiuktanxzjspeb","imdrchgpvwflmiuktanxzjsqib","ymdrihgpvwfloiiktanxzjsteb","ywdrchgpvwfloibkvanxzjsqeb","ymdrchgpxwfloiuktanezjsqes","ymdrchgpiwfloiukxanxzhsqeb","ymdrchgpveflokuktdnxzjsqeb","kmdrchgpvwfloviktanxzjsqeb","ymdrchgpvgfmoiuytanxzjsqeb","ymyrchgpvzfluiuktanxzjsqeb","ymdrchguvwfloiuktanxpjsqlb","ymerchgpvwfloiukthnxsjsqeb","hmdrchgpvwglfiuktanxzjsqeb","ymdrchgpvwfdoiuktanxzjsqaf","yudrchgdvwfloiuktaexzjsqeb","ymdbchgxvwfloiuktanxzjsqem","ymdrchgpvwfloiumjanxzjsqpb","ymdrchgpqwfloiuqtanxrjsqeb","ymdqchhpvwfloiuktanxzzsqeb","ymdryhgpfwfloiuktanxzjsyeb","xmdrchgpvwfloioitanxzjsqeb","ykdrchgpvwfloiuktcnxzisqeb","ymdrcpgprwfloiuktanqzjsqeb","yidrchgpvwfloiuktanxzjgleb","ymdrchgpxwfloiuktanxzjsxfb","ymdrchgfvwfloiuktanxzjiteb","ymdrchgvvwflqifktanxzjsqeb","ymdrchgplwfloiuktanizjnqeb","ymdrchgpvwfyfiuktafxzjsqeb","ymddchgpvwcloiuktanxzjsqeq","ymdrchgkvwflaiuktanxzjsqfb","yudrchgpvwfzoiuktanxzjsreb","ymdrdhgpvwfloiuktnnxqjsqeb","ymdrnhgpvwfloiuktauxzjdqeb","ymdrchgpvwflsiddtanxzjsqeb","ymdrchgpvwhloeuktanxzjsqek","ymdrchgpvjfioiuktawxzjsqeb","ycdrohgpvwfgoiuktanxzjsqeb","ymdrchgpvwflmifktanxzjsqel","yfdrchrpvwfloruktanxzjsqeb","ymdrchgjvwfloiuktanxzrsqeg","ymarchgpxwfloiukkanxzjsqeb","ymdrchgppwflghuktanxzjsqeb","ymdrchvpvwfloiuktanxpjrqeb","ymdlchgpqjfloiuktanxzjsqeb","ymdrchgpvwfofiuktandzjsqeb","ymdrcngpqwfloiuktanlzjsqeb","ymdrchgpvwfloiuiocnxzjsqeb","ymdrcogpvwfloizktanxzjcqeb","ymdrchgpvlfvoiuksanxzjsqeb","ymdrchgpvwflocpctanxzjsqeb","ymdrchgpvwfloiuktanlzjsejb","yndrchgpvwflzifktanxzjsqeb","ymdrcrgpvkfloiuktanxrjsqeb","ymdrchhpvwslocuktanxzjsqeb","ymdrxhgpvwfloiuwtazxzjsqeb","ymdrchgpvafloiuutanxzjsqxb","ymdrchppvhfloquktanxzjsqeb","ymprcugpvwtloiuktanxzjsqeb","ymdrchgpvvflyiuktanxzjsqvb","ymdrchgovwfloiuftanxzjwqeb","ymdrchrpvwflotyktanxzjsqeb","gmdrchgpvwfloauttanxzjsqeb","ymdrchmpvofloiukmanxzjsqeb","ymdrchgpvwflsiuktanxzjspkb","ymdrchgpvwfloluktajxijsqmb","ymdrcngpvwfloiukbanxzdsqeb","ymdrchgpvwploiuktnnxzmsqeb","ymdrcwgpvwfloiuktbnxhjsqeb","ymdrcngpvwfloiuktaaxbjsqeb","ykdrchgpvwfloiuktanxzgsqej","yuhrchgpvwfdoiuktanxzjsqeb","ymdrchgpvsfloiukbanxujsqeb","ymqrchgpvwfliiuktanxzjsteb","ysdqchgpvwfloiuktanxzjtqeb","ymdjchgpcwfloiuktanxzrsqeb","ymdkchgpvwfloiukfanlzjsqeb","ymdrchgpvxfloikktanxzjiqeb","smdrchgwewfloiuktanxzjsqeb","ymdrchgpvwfljiuktanxajsqer","ymdrchgpowflifuktanxzjsqeb","ymdrchgpvpzloiukoanxzjsqeb","yydrchgwvwfvoiuktanxzjsqeb","ymdgcdgpvwflobuktanxzjsqeb","ymdechgpvkfloiuktanxzjsjeb","ymdnchnpvwfloixktanxzjsqeb","ymdrchgpiefloiuktqnxzjsqeb","ymprchgpvwfloiuktjnxzjsxeb","ymdrjdgpzwfloiuktanxzjsqeb","ymsrchgpywfloiuktanxzjsueb","ymdrchgpvgoloiuktanxzcsqeb","ymdrphgpswflbiuktanxzjsqeb","ymqrchgpvnfloiumtanxzjsqeb","ymjrchgpvwyloiuktacxzjsqeb","ymdrchepvwmlqiuktanxzjsqeb","kmirchgpvwfloiuktanxzjsreb","ymdncygpvwfloiuktanuzjsqeb","ymdrzhgpvwploiuktanxzxsqeb","ymdrchkpvwfloiwkmanxzjsqeb","ywdrchgovwfloiuktanxzjsceb","amdrchgpvwfloiuktanrzjqqeb","ymdpshgpvwfloiuktanxzjyqeb","ymdrcegpvwfloijktcnxzjsqeb","ymdrcygpvwfloiuktanxztsqwb","ymdrchgpvufloiuvtabxzjsqeb","ymdrchgpvwflkiuktrnxzjsqmb","ymdrchgpvqfloiuktanxpjfqeb","ymdrclgpvkfloiyktanxzjsqeb","ybdxchgpvwfloiuktanxzjskeb","pmdrchgpvwfzoirktanxzjsqeb","ycdfchgpvwfloiuktanxzjtqeb","ymdrchgpdwfloiumtbnxzjsqeb","ymdrchgpqmfloiuktanxzjsqer","ymgrchgpvwfroiuktanxzjsqey","ymdrnhgpvwfloiuktanjzjsqlb","dmdrchgpvgfloiuktqnxzjsqeb","yudrchgnvwfloiukranxzjsqeb","ymdrxhgpvafloiuktanxzjsqeq","ymdrchgpvwfyofuktanxzjsueb","ymdrrhgpvwfloiuktavxzjsqpb","yvdrchgpvwfloiuktalxzhsqeb","ymdrchgpbwfloiuktanxzfnqeb","ymdrqhgpvwfloiuvtznxzjsqeb","ymdrchgpvbfloiuetanxzjsqeo","ymdrchjpvwfloiuktanxzjnqrb","ymdrchgpmwfqoiuknanxzjsqeb","ymdrchgpvwfuoiuktaqxzjtqeb","ymdrchgpvwfloiuktamxaosqeb","fmdrchgpvffloiuktanxzjsaeb","ymdrrhglvwfwoiuktanxzjsqeb","ymdrchgpvwflohuktanxzjcqei","ymdrcsgpvwfloiuktaexzjsqek","ymlrchfpvwfloiuktpnxzjsqeb","yxdrchgpvwfdoiuvtanxzjsqeb","ymdrchgrvwfloiuktadxzjsqew","ymdrchgpvwbloiyktandzjsqeb","ymdrchgpvsfloiyktanozjsqeb","ymdrchgpjwfloiuktanxibsqeb","ymdrchgjvyfloiuktanxzjsqeh","ymdrchgvvwfloiuktanzrjsqeb","ymdrchgpvwaloiuktynxzjsqev","ymdrccgpvwflonvktanxzjsqeb","ymdrchgqvffloiuktanxfjsqeb","ymdbchgpvwsloiudtanxzjsqeb","ymdachgpvwfloiuktanlzjsqwb","ymdrclgpvwwloiuktanxzjsjeb","ybdpchgpvwdloiuktanxzjsqeb","ymdtchgpvwfleijktanxzjsqeb","ymdrchgpvwfloiustanxzjsxep","ymdrcjypvwfloiuktanxnjsqeb","ymdrcdgpvwfloiuutanxkjsqeb","yhirchgpvufloiuktanxzjsqeb","ymdrlhgpvwfluigktanxzjsqeb","ywdrhhgpvwftoiuktanxzjsqeb","ymdrchgpvwflyiuktanozjsqtb","cmdrchgpuwfloiukmanxzjsqeb","ymdochgpvrfloiuktanvzjsqeb","ymdrcvgpvwfgoiuktfnxzjsqeb","ymdrchgpmufloiuktanxzssqeb","ymurchgrvwfloiuktanxzjsqep","bmdrchgpvwfloiukpanxzjsqmb","ymdrchgphwvloiuktanszjsqeb","ymdpkhgpvwfloiuktanxzjsqtb","ymdrchgpvwfloiuwtanxzjfqev","ymdrchgpvwfloguktqlxzjsqeb","ymkrshgpvwflgiuktanxzjsqeb","ymdrchgpzwfloizktanxznsqeb","ymdrchgpvxfloiuktegxzjsqeb","yydrchgpwwfloiuktanxzjsqqb","ymdrcngwvwfltiuktanxzjsqeb","ymdszhgwvwfloiuktanxzjsqeb","ymdrchguvwfjoiuktanxzxsqeb","ymdomhgpvwfloiuktanxgjsqeb","ymdrcvgpvwfloiuktanwzzsqeb","yydrchgpvwfloiuktanxzjmqtb","rmdrchgpvwfloiuktmnszjsqeb","ykdrchgpvwfloyuktmnxzjsqeb","ymcrchkpvwfloiuktanxzjsoeb","ymdrcrgpvwfloiukpanxzjsceb","yrdrchgpvwfloiukwanxzjsqhb","ymdrcfgpvwfloiurtanxojsqeb","ymdrchgpuwstoiuktanxzjsqeb","ymdrchgpvwflpxuktanxzjsqer","ymdrehgpvwfloiuktabxdjsqeb","yedrchgpvwfloiukqanxzjiqeb","ymdrthgpvyfloiuktanxzjsqen","cmdlchgpvwfloiuvtanxzjsqeb","ymdrchgpvwtloiuktanlpjsqeb","ymdrchgpvwfloiuktanyvjsqea","gmdrcogpvwfloiuktanxzjsqqb","ymmrchgpvwflosuktauxzjsqeb","ymgrchgjvwfloiuktavxzjsqeb","ymdbclgpvwfloeuktanxzjsqeb","ymdrchgpvwfloiuktaixzcsqfb","ymdrchgpvwflmiuktanxttsqeb","ymxrchgpvwfloiuktanxzfsqec","yqzrchgpcwfloiuktanxzjsqeb","yvdrchgpvwfloiukgvnxzjsqeb","ymdrchepvwfloiuktahxzosqeb","ymdlchgpvwfloiuktamizjsqeb","ymdrchgpcwflovuktanxzjsqzb","yvduchgpvwfloiukaanxzjsqeb","ymdrchgpvwfloiuktxmxzjsgeb","ymdrcrgpvwfloizktanbzjsqeb","amdrchgpvwfloiukhanxzjsqbb","ymdrchgpvwfloluktajxijsqeb","ymdrcfgpvwfloiubtanxznsqeb","ymdrchgpvwfleiuwtanxzjsweb","ymdrchgpvwfzdguktanxzjsqeb","ymdrchgwvwflosyktanxzjsqeb","ymrrchgpvwfloiultanxzjsqez","ymdpchgkvwfleiuktanxzjsqeb","ymdrchgpvwfloijktalxfjsqeb","ymdrchgpmwfloiuktanzzjsqfb","ymdrcsgpvwfljiukyanxzjsqeb","ymdrcarpvwfloiuktapxzjsqeb","ymdrchgpvwfloiuktanxzjcqvs"]

//let commonLetters = findCommonLetters(boxIds)

//print(commonLetters)
