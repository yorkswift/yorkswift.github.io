import Foundation

func findCommonLetters(_ boxIds: Set<String>) -> String {
    
    let mirrorBoxIds = boxIds
    
    //var foundCommon : Array = []
    
    if let firstBoxId = boxIds.first(where : {
        boxId in
        
        let orderedSet = NSOrderedSet(array: Array(boxId))
        
        if let firstMirrorFound = mirrorBoxIds.first(where: {
            morrorId in
            
            if(boxId != morrorId){
                
                let orderedMirrorSet = NSOrderedSet(array: Array(morrorId))
                
                if orderedSet.intersects(orderedMirrorSet) {
                    
                    let differentLetters = orderedSet.mutableCopy() as! NSMutableOrderedSet
                    differentLetters.minus(orderedMirrorSet)
                    
                    if(differentLetters.count == 1){
                        
                        let commonLetters = orderedSet.mutableCopy() as! NSMutableOrderedSet
                        commonLetters.minus(differentLetters)
                        
                       print(commonLetters.array)
                        return true
                        
                    }

                }
                
            }
            
            return false
            
        }) {
            print(firstMirrorFound, "<-- mirror")
            return true
        }
        
         return false
        
    }){
       //print(firstBoxId)
        return String(firstBoxId)
    }
    
    return "Not Found"
}

let testBoxIds : Set = ["abcde","fghij","klmno","pqrst","fguij","axcye","wvxyz"]

let testLetters = findCommonLetters(testBoxIds)

print(testLetters)

let boxIds : Set = ["ymdrcyapvwfloiuktanxzjsieb","ymdrwhgznwfloiuktanxzjsqeb","ymdrchguvwfloiuktanxmjsleb","pmdrchgmvwfdoiuktanxzjsqeb","ymdrfegpvwfloiukjanxzjsqeb","ymdrchgpvwfloiukmanazjsdeb","ymdsnhgpvwflciuktanxzjsqeb","lmdrbhrpvwfloiuktanxzjsqeb","ymdrwhgpvwfloiukeanxzjsjeb","ymdrchgpvpfloihktanszjsqeb","omdrchgpvwflokuktanazjsqeb","kmsrchgpvwfloiuktanxqjsqeb","ymdrchopvwzloiustanxzjsqeb","omdrchgpvwfloiuktawxtjsqeb","ymdrchgpvwfroiukhanozjsqeb","ymdrchgpvwfloikktanyzosqeb","ymdrchgpvwfioiuktaexzjsqea","ymdrcngpvwfloiuktanxzjsamb","ymdrchgpqwfaoiuktanxxjsqeb","ymdrcmgpvwflziuktakxzjsqeb","ymdrchguvwsloiuktanxzjsqen","ymdrchppowfloiuvtanxzjsqeb","ymdrcngpvwflyiukkanxzjsqeb","ymdrcbgpvwfloiukjanxzjspeb","ymdrchgpvwflopuktanxzosseb","ygdrchgpvwfloiukxanxcjsqeb","ymdrchgpvwfloauktanuzjsqei","ymerchgpvwfloiumtanxzjsqet","ymdlcegpvwfloiuktbnxzjsqeb","ymdrclgpvwfloiukyanxzjlqeb","ymdrchgpvwhmoiuktanxijsqeb","ymdrchgpwrfloiuktanxdjsqeb","ymdbcwgpvwfloiuktanxzusqeb","ymgrchgphwfloiuktanxzjspeb","imdrchgpvwflmiuktanxzjsqib","ymdrihgpvwfloiiktanxzjsteb","ywdrchgpvwfloibkvanxzjsqeb","ymdrchgpxwfloiuktanezjsqes","ymdrchgpiwfloiukxanxzhsqeb","ymdrchgpveflokuktdnxzjsqeb","kmdrchgpvwfloviktanxzjsqeb","ymdrchgpvgfmoiuytanxzjsqeb","ymyrchgpvzfluiuktanxzjsqeb","ymdrchguvwfloiuktanxpjsqlb","ymerchgpvwfloiukthnxsjsqeb","hmdrchgpvwglfiuktanxzjsqeb","ymdrchgpvwfdoiuktanxzjsqaf","yudrchgdvwfloiuktaexzjsqeb","ymdbchgxvwfloiuktanxzjsqem","ymdrchgpvwfloiumjanxzjsqpb","ymdrchgpqwfloiuqtanxrjsqeb","ymdqchhpvwfloiuktanxzzsqeb","ymdryhgpfwfloiuktanxzjsyeb","xmdrchgpvwfloioitanxzjsqeb","ykdrchgpvwfloiuktcnxzisqeb","ymdrcpgprwfloiuktanqzjsqeb","yidrchgpvwfloiuktanxzjgleb","ymdrchgpxwfloiuktanxzjsxfb","ymdrchgfvwfloiuktanxzjiteb","ymdrchgvvwflqifktanxzjsqeb","ymdrchgplwfloiuktanizjnqeb","ymdrchgpvwfyfiuktafxzjsqeb","ymddchgpvwcloiuktanxzjsqeq","ymdrchgkvwflaiuktanxzjsqfb","yudrchgpvwfzoiuktanxzjsreb","ymdrdhgpvwfloiuktnnxqjsqeb","ymdrnhgpvwfloiuktauxzjdqeb","ymdrchgpvwflsiddtanxzjsqeb","ymdrchgpvwhloeuktanxzjsqek","ymdrchgpvjfioiuktawxzjsqeb","ycdrohgpvwfgoiuktanxzjsqeb","ymdrchgpvwflmifktanxzjsqel","yfdrchrpvwfloruktanxzjsqeb","ymdrchgjvwfloiuktanxzrsqeg","ymarchgpxwfloiukkanxzjsqeb","ymdrchgppwflghuktanxzjsqeb","ymdrchvpvwfloiuktanxpjrqeb","ymdlchgpqjfloiuktanxzjsqeb","ymdrchgpvwfofiuktandzjsqeb","ymdrcngpqwfloiuktanlzjsqeb","ymdrchgpvwfloiuiocnxzjsqeb","ymdrcogpvwfloizktanxzjcqeb","ymdrchgpvlfvoiuksanxzjsqeb","ymdrchgpvwflocpctanxzjsqeb","ymdrchgpvwfloiuktanlzjsejb","yndrchgpvwflzifktanxzjsqeb","ymdrcrgpvkfloiuktanxrjsqeb","ymdrchhpvwslocuktanxzjsqeb","ymdrxhgpvwfloiuwtazxzjsqeb","ymdrchgpvafloiuutanxzjsqxb","ymdrchppvhfloquktanxzjsqeb","ymprcugpvwtloiuktanxzjsqeb","ymdrchgpvvflyiuktanxzjsqvb","ymdrchgovwfloiuftanxzjwqeb","ymdrchrpvwflotyktanxzjsqeb","gmdrchgpvwfloauttanxzjsqeb","ymdrchmpvofloiukmanxzjsqeb","ymdrchgpvwflsiuktanxzjspkb","ymdrchgpvwfloluktajxijsqmb","ymdrcngpvwfloiukbanxzdsqeb","ymdrchgpvwploiuktnnxzmsqeb","ymdrcwgpvwfloiuktbnxhjsqeb","ymdrcngpvwfloiuktaaxbjsqeb","ykdrchgpvwfloiuktanxzgsqej","yuhrchgpvwfdoiuktanxzjsqeb","ymdrchgpvsfloiukbanxujsqeb","ymqrchgpvwfliiuktanxzjsteb","ysdqchgpvwfloiuktanxzjtqeb","ymdjchgpcwfloiuktanxzrsqeb","ymdkchgpvwfloiukfanlzjsqeb","ymdrchgpvxfloikktanxzjiqeb","smdrchgwewfloiuktanxzjsqeb","ymdrchgpvwfljiuktanxajsqer","ymdrchgpowflifuktanxzjsqeb","ymdrchgpvpzloiukoanxzjsqeb","yydrchgwvwfvoiuktanxzjsqeb","ymdgcdgpvwflobuktanxzjsqeb","ymdechgpvkfloiuktanxzjsjeb","ymdnchnpvwfloixktanxzjsqeb","ymdrchgpiefloiuktqnxzjsqeb","ymprchgpvwfloiuktjnxzjsxeb","ymdrjdgpzwfloiuktanxzjsqeb","ymsrchgpywfloiuktanxzjsueb","ymdrchgpvgoloiuktanxzcsqeb","ymdrphgpswflbiuktanxzjsqeb","ymqrchgpvnfloiumtanxzjsqeb","ymjrchgpvwyloiuktacxzjsqeb","ymdrchepvwmlqiuktanxzjsqeb","kmirchgpvwfloiuktanxzjsreb","ymdncygpvwfloiuktanuzjsqeb","ymdrzhgpvwploiuktanxzxsqeb","ymdrchkpvwfloiwkmanxzjsqeb","ywdrchgovwfloiuktanxzjsceb","amdrchgpvwfloiuktanrzjqqeb","ymdpshgpvwfloiuktanxzjyqeb","ymdrcegpvwfloijktcnxzjsqeb","ymdrcygpvwfloiuktanxztsqwb","ymdrchgpvufloiuvtabxzjsqeb","ymdrchgpvwflkiuktrnxzjsqmb","ymdrchgpvqfloiuktanxpjfqeb","ymdrclgpvkfloiyktanxzjsqeb","ybdxchgpvwfloiuktanxzjskeb","pmdrchgpvwfzoirktanxzjsqeb","ycdfchgpvwfloiuktanxzjtqeb","ymdrchgpdwfloiumtbnxzjsqeb","ymdrchgpqmfloiuktanxzjsqer","ymgrchgpvwfroiuktanxzjsqey","ymdrnhgpvwfloiuktanjzjsqlb","dmdrchgpvgfloiuktqnxzjsqeb","yudrchgnvwfloiukranxzjsqeb","ymdrxhgpvafloiuktanxzjsqeq","ymdrchgpvwfyofuktanxzjsueb","ymdrrhgpvwfloiuktavxzjsqpb","yvdrchgpvwfloiuktalxzhsqeb","ymdrchgpbwfloiuktanxzfnqeb","ymdrqhgpvwfloiuvtznxzjsqeb","ymdrchgpvbfloiuetanxzjsqeo","ymdrchjpvwfloiuktanxzjnqrb","ymdrchgpmwfqoiuknanxzjsqeb","ymdrchgpvwfuoiuktaqxzjtqeb","ymdrchgpvwfloiuktamxaosqeb","fmdrchgpvffloiuktanxzjsaeb","ymdrrhglvwfwoiuktanxzjsqeb","ymdrchgpvwflohuktanxzjcqei","ymdrcsgpvwfloiuktaexzjsqek","ymlrchfpvwfloiuktpnxzjsqeb","yxdrchgpvwfdoiuvtanxzjsqeb","ymdrchgrvwfloiuktadxzjsqew","ymdrchgpvwbloiyktandzjsqeb","ymdrchgpvsfloiyktanozjsqeb","ymdrchgpjwfloiuktanxibsqeb","ymdrchgjvyfloiuktanxzjsqeh","ymdrchgvvwfloiuktanzrjsqeb","ymdrchgpvwaloiuktynxzjsqev","ymdrccgpvwflonvktanxzjsqeb","ymdrchgqvffloiuktanxfjsqeb","ymdbchgpvwsloiudtanxzjsqeb","ymdachgpvwfloiuktanlzjsqwb","ymdrclgpvwwloiuktanxzjsjeb","ybdpchgpvwdloiuktanxzjsqeb","ymdtchgpvwfleijktanxzjsqeb","ymdrchgpvwfloiustanxzjsxep","ymdrcjypvwfloiuktanxnjsqeb","ymdrcdgpvwfloiuutanxkjsqeb","yhirchgpvufloiuktanxzjsqeb","ymdrlhgpvwfluigktanxzjsqeb","ywdrhhgpvwftoiuktanxzjsqeb","ymdrchgpvwflyiuktanozjsqtb","cmdrchgpuwfloiukmanxzjsqeb","ymdochgpvrfloiuktanvzjsqeb","ymdrcvgpvwfgoiuktfnxzjsqeb","ymdrchgpmufloiuktanxzssqeb","ymurchgrvwfloiuktanxzjsqep","bmdrchgpvwfloiukpanxzjsqmb","ymdrchgphwvloiuktanszjsqeb","ymdpkhgpvwfloiuktanxzjsqtb","ymdrchgpvwfloiuwtanxzjfqev","ymdrchgpvwfloguktqlxzjsqeb","ymkrshgpvwflgiuktanxzjsqeb","ymdrchgpzwfloizktanxznsqeb","ymdrchgpvxfloiuktegxzjsqeb","yydrchgpwwfloiuktanxzjsqqb","ymdrcngwvwfltiuktanxzjsqeb","ymdszhgwvwfloiuktanxzjsqeb","ymdrchguvwfjoiuktanxzxsqeb","ymdomhgpvwfloiuktanxgjsqeb","ymdrcvgpvwfloiuktanwzzsqeb","yydrchgpvwfloiuktanxzjmqtb","rmdrchgpvwfloiuktmnszjsqeb","ykdrchgpvwfloyuktmnxzjsqeb","ymcrchkpvwfloiuktanxzjsoeb","ymdrcrgpvwfloiukpanxzjsceb","yrdrchgpvwfloiukwanxzjsqhb","ymdrcfgpvwfloiurtanxojsqeb","ymdrchgpuwstoiuktanxzjsqeb","ymdrchgpvwflpxuktanxzjsqer","ymdrehgpvwfloiuktabxdjsqeb","yedrchgpvwfloiukqanxzjiqeb","ymdrthgpvyfloiuktanxzjsqen","cmdlchgpvwfloiuvtanxzjsqeb","ymdrchgpvwtloiuktanlpjsqeb","ymdrchgpvwfloiuktanyvjsqea","gmdrcogpvwfloiuktanxzjsqqb","ymmrchgpvwflosuktauxzjsqeb","ymgrchgjvwfloiuktavxzjsqeb","ymdbclgpvwfloeuktanxzjsqeb","ymdrchgpvwfloiuktaixzcsqfb","ymdrchgpvwflmiuktanxttsqeb","ymxrchgpvwfloiuktanxzfsqec","yqzrchgpcwfloiuktanxzjsqeb","yvdrchgpvwfloiukgvnxzjsqeb","ymdrchepvwfloiuktahxzosqeb","ymdlchgpvwfloiuktamizjsqeb","ymdrchgpcwflovuktanxzjsqzb","yvduchgpvwfloiukaanxzjsqeb","ymdrchgpvwfloiuktxmxzjsgeb","ymdrcrgpvwfloizktanbzjsqeb","amdrchgpvwfloiukhanxzjsqbb","ymdrchgpvwfloluktajxijsqeb","ymdrcfgpvwfloiubtanxznsqeb","ymdrchgpvwfleiuwtanxzjsweb","ymdrchgpvwfzdguktanxzjsqeb","ymdrchgwvwflosyktanxzjsqeb","ymrrchgpvwfloiultanxzjsqez","ymdpchgkvwfleiuktanxzjsqeb","ymdrchgpvwfloijktalxfjsqeb","ymdrchgpmwfloiuktanzzjsqfb","ymdrcsgpvwfljiukyanxzjsqeb","ymdrcarpvwfloiuktapxzjsqeb","ymdrchgpvwfloiuktanxzjcqvs"]

let commonLetters = findCommonLetters(boxIds)

print(commonLetters)
