import UIKit

//https://leetcode.com/problems/longest-repeating-character-replacement/


func characterReplacement(_ s: String, _ k: Int) -> Int {
    var start = 0
    var most_freq_Char = 0
    var length_of_max_string = 0
    var char_freq : [Character : Int] = [:]
    
    for end in 0..<s.count {
        if char_freq[s[s.index(s.startIndex, offsetBy: end)]] == nil {
            char_freq[s[s.index(s.startIndex, offsetBy: end)]] = 1
        } else {
            char_freq[s[s.index(s.startIndex, offsetBy: end)]]! += 1
        }
        
        most_freq_Char = max(most_freq_Char, char_freq[s[s.index(s.startIndex, offsetBy: end)]]!)
        
        if end - start + 1 - most_freq_Char > k {
            char_freq[s[s.index(s.startIndex, offsetBy: start)]]! -= 1
            start += 1
        }
        
        length_of_max_string = max(length_of_max_string, end - start + 1)
    }
    return length_of_max_string
}

print(characterReplacement("ABAB", 2))
print(characterReplacement("GGUIVILPZJXWWZLVKETZWWFKDYCRQICLYYJDMRCQVCSFCSKRMKCFUNAECJVRLAIWFJADSNNYDPXVYGPNCLLCQJBAUVPTJCWEXATZVJVCPQWLZNUEIAUHYCBMFJSJJHPBNBFLKSGXQVQUBYFORKGFPPMIJNMSTBPPUBNYLKFAWDHTWEJKHNLOCTJQUKOPSGOLVYUQVDKZNEHPLRVHNEXGRPFQXSUUPWASPCNMPLQLPTUWNFANSVUEOBXPTRRJEEVIXEFUYRMTITPDNFYUVEMXZGMBTOLRWKHQQINSWGKVBDKUGQZSHFKPLQMVHUWMAVZGQJLTFHONMUSQUHZTQCKARLOXZETTQQNMKRNHIKOBUCMRGFSPZOIXTCLEKJOMMERVPKBLKATXOAUCAJNNFNZGROGOYCWUPWFSJXDYRIMLQZRQQMEISASTXVZQJRLGIKGSAEPGJAIHKFJFVNPAGQVTWIHKWQTWIGSSDNAPSKXWSOSCKZDSELZYQJKABUDCJIZGNBBAEVFMKXOQLZLJSODTUJJRUGEAISYVSZIHNYFDULBMEDDRKXTFPTJWYIDEKUSVNFIVCOYCHKJNSKEJNAHVZVVXKBSOYNXZVKKBJYBSNJXYTIDMJFWVGFVOVRDZSMKCIDZLAHEDXNBCZPJPZJNMEVYIMRQNPXVMEYCSJWGTIGHGTCERQUCMBVRWPGMFEMWBUYCXBKNERVVRKOFCJEZUWUGYPKTVBTRBIOTZUZYSDNVJAFDRNVYKEWLONXAXDSVRHXSMVPAJSXJNZFFQWMPEMHVVAYWIXHSFXZIZTCRCLDEPRWADXSDKTFVNWJWNIOERYVJDWRJXCJSSCTDJOFHXVSNHXZCXQNGXDWXSEPRMROPGDJYGBCDPFZHSJLMHFREFYDXEGKGDVILPDLYTDAPGUYGGLAECDMTCATVRNQUUKNTCYFBADMPGZJAIXNAMCPCCAKWKMRGKRUEQFXJRWHCXYXZPYLNGBSAAGBALUUUDMTSIBAIDVLBGWAPTPDGVUZHUXXYPLYWWBAWNYOQCDOYDIRFOFZOXQTQAQUCOHUDMBVROXBDXZQGTMUJSMLGPBEJCEYTADSVVSIEKIOBYHZEODBSAIYZASOKFOVVILHFRDHRRFCTOBUSQXKVSGCAKZPBILKAIVEJDNKAVEMLCVLOMGPKPHOAVSOFQBAFCMXJJJLMUVWOYBDMGBHZMUNEKEUWDCJAJRWNZQMSVRILFAQCUAQKDGENWPFBFSCETWDAQDNVLORCDEQENYPOILDWPIPINNEJFOTFIXNLJYSZMEBBHMSOIHARKXZLEQVHKSNEFVBPDYTCXWUEKIZLRVTHAUNYAPLSDIMHVTZIPCSKWHGMFHBYSTNZSWIRMBDRWPDINVIYTEELJHBNDBVAZENFHORYSUPJAOEKIHXSOVLZZCNEFXAHQMTAHMLNNHWBXKRWWGZJTDTPSEMVVKGAWXSCJBOAWTNGIQRGODWOFCIQYCJANKCCJOELIIDQVRUIHUIQLWZSYHRENHXQGYKXRINPTBXGEUNYIBZPMENWVSVOFNNBLJHJUDDJTDQGXNABPCAAAINPFRIFNFGVQZURJMFGCCYIFNJYFVZQZIELQUUSQTAAOOOIGBLPVOIQPLIZLQVXZGSWGQZUXQDRIBRFDGXRKAFYJWMUOANHKOBRMQVHVAEIVCRNQOAWPVBRRPZJQZSDLAANATNGWLTJALQFREICUIXTFSTJAYHQVJBPHAJOMTPBWAGANDOSGIKFJIAFEGRSPWXCXPPARWSRNRZIOFOMVNDLNNGCBVOOSPTFQQCNYDFXIZUBJUHHFZTYVKOXVDDRVICTXGCOZLBCKEHYAASGMWIBVZFIXOSQLUFXFMQDABVTAXJQILPYHTJQOSEANXYTVRYZWENFXTVPCZTXPOIYCYAOLQVYDBRMMNFTYKKMFXAISADZNIATGJAUUFREZGOGDJGGVYFKYCTORORXZFETRKLMSSZBNPLXKHPTDWAPIRJGKSMWHWDVYEPCFTMWXEFNPQQRASGBEQZOLLIYHVQDQWRBQWSHIKOBMXMLFOIPHAVILRXERYACNFYQIEIFNOEHLSQDTDBTAWDRJHMCTMDZLPEUJADTRTYGTFMNXXEYLNEDIDCUVACLDIOCOAYXPTYATDMXRZPQDBHKVQGINNHKALPPVPDZBPMRKCBZEPTMWSYWQDGWYKAZPJORYLENUDLZBFWOJNVLCKJYJWRXGWWURULTXOKKCISJBHRMVCELQSOROWBYIGJUHSMMEMCROQCNEBGIPZTTOVDUXYXSFPKBVNEHBMRKQNKUSXUSGJSTGJCDXZMVKGWJIRAKCUOYUEOKFRBJUMGWMUUTODTDMRCESDZHNJBAPZVGYBLBDXKXAXIRPMWVOPVEVXLIGRYMPMREHLWRDIAYWDYQLDUNYUMYWFSAIIBDIUNRGPGKUSBAGHRUTGIVTPTFEGOSUPNQLKETROUEAIEWEJBNCDBUGJSEGUSCXPBNJHLOHAALNCMSVKVUGCUWXPHEKAYKDJUYKBXMWIJRFQHOIFFVUIGMUOZACQAVBXZBWRLJJNKJSNHGHETXMOPDRRWWXNPWXYADMOCNCUFSMXDEGPTHLZZOYBCOAEEVUFJXFOUYVQWBPCSHIEBZWAZUUPAIXTTEREKYYTHNQUATTDNQFBBJIQDNAEXYPKRUSAEEVVCDAAXSMNXXDSPLWFVCZVUPKCFVNYMGKYRVZFBDSLORQXWIUEYOFDOVWOPLZKFWQYOIYAEZRQZLQKIGFCGXDSKKSIKHBYDMWZUPBBDUPUCVYWHZIEBYFQMJUWHPIOKWSMOSMXPBLFXVVLXMYKXKAEHCXLQWIYULQTNVIUTXTOKZROOXLULLCBSUEQKXVGBXHZDCZLKWTOXNEWKKMLFUWQADDPCGTHCAOQAHXKLGXUKJDPTYZTASGQAFOYHJMIDXMOWWJFUAPBXBGJEZJXWTWWKWHRXAELXYJXFRTJJHOZWVDCETVPVQKAVYPMYNGRMIKKUYQCHHAKVQJVNRQRMNOQYFXGPCAACCRBYSWZLDVEMTEZNOESIDWOJQVQGHHBDEUMNFKSZFMBMTAMLFRZWOCJTWGSOWDUWBJSBEHOVGMMNSZNBFGOMNAGGPLGKWDDALFMXCOHGHWKAGDOHBXVGRMRIJCRQFTMHAJEJKGIUDIKFGWGQSGKJBGOWZUVSJYYFCPAEJWNLWTGVQQPUYYEFFOZWXGWGSRYDXPUZIVKHTTULABWWAKISZGTGSNUITQMTLJXOYCYBFPAVOUAMJLUCMRAGXTJQKXQFJIMOMXDXWQNJOPWSPWXZMJVCSRNLZYAOOVDUVMOOIGKMRVADDRTQWTLMLPAFWSONDTIRPUAUAMPJUAZRLIHLGLUKOHXTLLDSGCQBZEWVHTWTINAVDNULUAGNNGIVWDOMPHCDTPDVGJLYLSUMQQSVPHNAETDGGIOQPPOILSMDGTOQZBZZLEHNOZHZCEFITTMEEVGHFKGVUVRMSNEJNVTLVCRKIMKJBZHBJPJEDXBOFRLSAMCNEXPAFXVRUORPIFGAMWQPLTBGQLUBYIHEPWSLPEGHAOEZFESFBCZQQMYRMFUCDZXPYYVOLGMHQZCCYPDGCQLIMJYHXWATYEVPOHUJDHJHZILPBOGJVBYUYHTOCVVECOBZPWCLVCVMAUOGIKSEBLWYZQYCNPECVOKFSBIYTPHZTVPQTSDZXULAGZLGGHSSQOOZFNOFBPTENBHVURGFBKXRGGUKFHGZIIEOAXMCGHJAZQMNRBHBOZWDXLAVMPFTRXSGHOHSEPRNNTAVYWSGNUUZFTOFYWBVEQVKSBUXEUKPFICJDPLPAEVMKPNNTPAREICRASNVGLGFYYKRPCMMHPDOIZFIEFUGPUWTBUMFNHCEJJQQOKVGNDWDHUOBYIYFIOFTRDHFIJDCXAWPZJZWXRFFVXSYGBSTFRFISCKIPDDXQLMROTOWMONTULAGYTOIIPPWFTCZSKXPPKJGTTBTJHYFEHEDECISNZLRIGDUZPTAYSKDYEVVJGCTMRKUXVTHOIZZJAEULSVSHGXLGGVCZVTEBJIMFNVXEXHBQPJILRPBCXCLXHDMWAHSYUIIWUXHNGLIILQEXDPJKDRRTLNPFAKORFUNIUQUNJBLZIXQRMUQBBWUSLUDDDVPKAMNUPAGTSITEFWEHKYKANXHLKHHNBAXVRUNLFYBYNEFUVWGRFBIFIAJURNAYYXKGOBSRZRWCIWHUHQJYMKEGLGCVRWHRRPFUKNNKRAEIIDSMUYXYKIMUOERIOVMLDUQIFGHENAQFHEPGKBKGTQGYOKZJDDXANCWFKRSRWAKUNKKLGXTMUANEUSAELWDBRBLEZRMWBYONUQAHFBMWNDKCIXHTVMWKVLTCPZJTTJNIVDOSTOXHRGOQULDXYEWBECOGSQHVVPLBTYXEFGWCDHFORQPLZVZPASYCDDDBYSERCZSRUGJKSPDEDQPPWVXHXYRHBVWFQTQEADIKBOSZIFKWAEQQLEFLFUTRVNUWPZPPRBXUUHBVADNSJPUPIKVORQQSOYVLEHUDCJUVDMTQMRAKXDMIIDGTUAHHLCEJCTRGZCAHIKCTFLZRTDMTFWQGIIVSOXPBQEQTOTQEMTMDNQCAONKUFQGHGYYANICAWWSLZJIICHYPLZOGCKOPBLJKVJTLOGTPYQPYDVBBYECBUAFETGUOMGHYPMSNPDYQWVBMYGAKCPWLLIYXPOFRCFQDLWYMZFOCALQOBQWLTKFPGKFXXGVPJOUFQOPBENFBJTZQRAHGPQAEUCVKCVFQSXZFYZFMSIRIXGCHBRXTVRCYMHBLMQRXCBPOZHIBUDIVNUQCHQHHLJUKKFTYJCKGIUXNDTQHAJSLJQBJCVAQGYAOZZOOUGFZYBCECSHQOKYGTTIKSYLCCFAIAYLHEDIQSSBGMYHSMQFZNGSDBNFORIXTKHRQVBIOHVLCEZCNRLBVJAJVUWAMJUMERWLDEZBABJQZSGROERFZBUSSLOVPUPTTVHVOALEFSBPJILYTIJKCVPEFVOJHLSRBYPAQAICBVEAXHDRRJPMFSBVVZSIDSTTWQURBPAILAKFVZMCMFFZNMHDFDOGOMOKAYNKYWMXWISGSZWVTABHXZGHCLBAGCPECGXLMOCGDUXATITPQJJNOGNTQVFLOLNBLQUSVWXDNWLSWPQMVQAXQYTEJAOJGXNVQRUHCRVTZFBQTQIRUFAMFMZNZOLBZSPOOFCQNAQGMIKPNUVVNHPHHVQWKUMWMIICPYDXMQHKPAICYBBXGJYACQMJSJNJQTLCKKTXLKOQGRVXMMXAJWORYLTEHAQUOAHHWTXIFXIYNHKILIZKLGGTOSDVDPXGVRSBAEQLNHFIKPSADHXUJZDWXYGPCHFHZPQRNFBOFVTFJGEWKFKGIMQUPQINJHOGNARVQCCFMCIQLYCUGVEYBLOAZTCOFKQKEWWQIUVEJUMNWFTLNZNJDNTXUGRZLBPYCEXMKGQNUEARXQHNSKEOAXGKPNCKNRUHORVHBYQOOKRGBSLYDVGCYZTSGJCNMZQGUBSFNQHDNWLUGWLSEGUTBGJVYMYLOOVRLJVZDLJSVFCFAMWYFWFYOKLYJCTSYATNYLQXONMFHTDCHHFUOIJRUMBJCLIPLLTRYQUVQMGWEUZQYVDMPJAENUONSUNXLUSOBJIYPWTDPUWKCGJFWPOUKIYUUXORYDGKNSGPBSPTAHHJUZCNOITUFNLCLCJFTYGKXQHAPTHTTBTJWBZDRBJTGUTCBJMIYVETCBZAHNVOILBJKYJYYCVKWWGQFLIKPECOKSEEMBDWRABXMGVBZQWFYCBFBUMKNALEOBDBKXOSQRQENKFFJHKUSKQPAPQEBKOLICBGOWRYTXQVMWODJBKMCJMRIIJIQLQLQZLQBBGVOYEVMZBDNTQWNWSMUNCOCYBJIMRNQZHQUEGHAKGPSUFUGPIKLHDOZRCKZMLSPRWHXGUCFPTRLGIZZXVZWXBQHBHMRQWVUHPFREKFUZCUBEULVZLRZYVKLNXLYHDRMIHDDSINVAOHTTPUJKLVNAAYJSPGODSNSANFITXTOZANRBLHQAEGRPDKZOBVXXEZYKMGHIHHESBMMHQEEOOMCLRMTLHROLPBMKEVGMXXJADOFTIOBTRKZEMIEALBHWHMPTATKODYHTFULFCIBRDTZWZUFGWNGTCFZCYISAXPUUSNCPFMEFIPYVWRXJUBLIJSFHAQRNNHKXMDDVLUQHWCSKKKJFBEHKLMJZDEPRZSMYFQMIBJKDYIZDUFVXCMYHVTIHTSZCVVGDKWDQEYBQTPAOKPPGGNYWPRIQOUZITSPBAHZHTRNLPNCSHPFUWJJQDVMZGEXZIKMQXHOQRCIEWQLUQVFLELOUFYMDJFVCJWJIVULVKAZBHRPSCNVXEPJHINOWPFMEUSGQVMXDBHPEDAOXWBBXGUOHVINJAVTVXDVPVYRDOFENTCHZLMIOECLJRXMFJAOFHAZNZAPVQZEMMTJFDJIHURPBCCDXHWNTMSGYQQGLOGRPVGWWJFTSKSUZAKKTIEXNEGVADHGIGSJQAFSRNMDVLIZVLIPJQJZRMQAGITGCLMRALDUMVRUIRZRIONCEQDAWEOXMCXGOTKYPBICDCRJLDEJDWREIGWVVOKYOCNOQHGWNDELTIBCNSZLHZAPRWBRMHJQKCZSTNNJUQIIFFVPXPRXKUQVNDEQYOEITDYFZDQRBNCUEMQEYLNHHELQSWXWCDURSEQBUWKRYDXBGUQMENGNLGANERVIGDSMCJSXGUGJYZSRDLBUWGMBBHWEBMMDIZLRACVKTTJTJYNCQHFEBIGTWXRXQMUKCHJQNKZRARDXHSOSLXYRXDCPKMUWUGMFGROFHQPAYTABBZEFUAVVIXYJGBJIXIPUBTAYWYIKRCNEMIVOWFBNLTBRRLNRXTQEHGHWKYRJYIKFTSKAHJQLVBSUUPGTBUVEARNFXIVULOTNOCFDIMPFORADOFOBPKIFXRZZCANBXNTVCCGOLKDUSSPWIFVHMQJCPGHAMOHBEDAXIILTXEDYBUNSMYYITUCIVWJFXJPZLZZVUZIOWUQQUZEEGODVQFMDKDPQPPSQTVYVEYSAIPTCINKVWKVZIZPSZDOCFDHHBVWLNDZZLQPSNXKJBERLORWRKIQHOOXOKBODPALHOVMDIACIBSUHWPIAURJDMVKPNMFCTSVRKNFBTARMTDCDZKGNHTUTMTJFICCCSABITMGWRMUCHLQMBXHUGZLAKQCEYZUYRDYLLCHPGVLJIRPTRHYSMUYKEVKOPKMDTDLWPPEIWJLLAGDIOTKOUXOVEGTHDCCUZDYLRHBNFJVAXSKRIRCZQQOYXGEJECKZDOMWNVLHKYBDKRMZANLUHMEWOTEAKCALXPXUBHDUQEXQFQSSJEQUBHVCHRHHJNRHLYJMQJCZMIANZMAKJPHOTMTSGRYWUJGQNYYSYCDOOYGVMGFCVKMJNLKAXHCZIOSZDKBZOTQTPESFKICVKHSRTNYNDVPFJOVBWALBDPQIJRYKECTTVEUOXVGBFYYLBZDITKPQIOSOJRXMPMVTDXFMIJOOPSTYKZFWRLJORWYKEXDNUTRGHTTQJDEONAZEIAJURXVRFZJHCIYOJCRQMUTLOMGWMYNZNIPNYMCUXCRIPJNTKXMZRWQVNTWWOZTPYUNLRXPBNUAUAXOQEMXJMVRUNOPZMGDFJUYRHXTLKZPIAEWWJYPSCKKQTKYNXCISUAWCQPBZPLJJINVKFNQTPLZCWIFCFUDNTWBDHDKNEBMMDERFLZIZPUYIQCFQPEWZUFMHSKPUHBKSNWCYHGKCTRYBRACSLHGVHTISIJBIDSEGXYQATMJVPDUSUVELXGSMCCOSADIKAHNXYARKGQRYEJNMRQARBBTPOSOMIDKIUWTMSIKHLDMZNTPEHKFSZGQKMRMLZXADOSHNKOSGGARFBCAZVQUXILUCGZKCIRDLEJACGZEGXOVVNIECICBAGHZTXDXMHSHSBTXCTBOQOQHTXLLLJEMWRHEIWBOPSUVXZDJOZRPZLVXVOEBXXTUXJANHZJXCFKGYEDWRTQTZMVIGNXRRXIKFFTJRVQUTALBRSSHSXDBAXCTRXPXNESIKFKMZFRBVXBZUOBBWAWPOOFNVBLOJDUAQCTMVLIVTXMKQSTRTUQXTJIARGNUIDDVLKBJACZOPSUFDBJFZSQBDYVOZPFTXDMSMRTZKYJUNYCFKZKHOOBEYHFLTIEKXCRLNZYTOVZKBFMCSDAWEBXRLTAVOAWKSSGFXZHNCOUIPXFIVKNEACZJUHCHUYZJZIVAQVXDYDLZMLPGFIQEDITULCELTSKSJQKWGJUSQGIYUNTXMZHJQDRZHTVDOTXFBVVJRJPFYDGCPQZTYIWQMULIPPXNACUTOKJYBULGOEXNBFUQAEBGJVDHJIHBOYJFLFMAGPBJADKHSNXNHJSGFPBXPHGQFTGEKOBPMGTKYJLZWJUYXLGAMFCFWREPCMWLHSVMAGUSXTNUGSCIYQAWVHHIJQNQXTBSYNEDRDJRVJQFMCIJIXVJKNSZBULKCATAIZBXKLUWCHCKEUAKLDFBWADPMYPOXCDKTVCYEPCQGSEIBAKELDCWHHMSRHKWLOVZQDADNWIQYFNYOMJHCIUGRKYDFUTILBUCZGKJKQZMXDVGCZDKFXYMISBNMKSRUFARSUMDSRENQRETHWIJDYOSULKVDVAKDXSKGNSHGRSJDGNFXSOBMXTOEGIHQKWLEMSUJAKDGUOLYIYCVZXFEHWFUDLMCGZYDUAJWOEUQPWVHDFRZAGBFVGOTIMGXGMRVSPVIOASOWGADBTCWAUYAEOVLKMJBBZRITWYKQJYEXOGQLZDCNJTFYRBGZUVYGGUYMJGIDQWNOQNZAIRSLLGRODNOGIPIZUZOELXTZZLLUHNPSXKLWOUFYNTTUFMBMGWFBIURNSAXMOPFTWDSMANZSNESOYQVLZCOZSGRSRYOBSWVJBPIQWFXTEIRBRJXXXBYWIYWPQXOVNSZHZLPXAKXSNJEWDKRHPMEBGKDPZKGSCBIMOSSIAIOTCYLBDTWBIOJTOJYDEDDPJBNQLGGVWXIJGASJYNWPSMBAHWLIYSVWWATJMGLXTORJUOGUTZJCLSIKGUWTAJQLUODMRDSOXTYWENOPFAYJLJCJYWCKARVWGMMMZEREZZRZRIYRUVVICJCIWFOBSHBPMIIUHVZVWPMHPKZBQLWTAZETNVFVVEGMBNFKNOOYHVHNNWJNDOMGVPVYRCWVWNWXXQUAEZZVQTDYNYTSAJCLVGDZSQHNRDBPVZUVOUFILTIMAZXHAKWZAIDETWXQXKFOOFAOUWSPSFFNOOMXWIOHLOUTMUWHNARDGPTHNQIDSGLXAHTWSUMTUHLIIWOHZPWTEHJBOEBUFDODRJCHVYZGLTEIYZXDZVTHGOZRXHKFPYHIZOGQWBUGTJYGYNNKERORDYLRPRRUFDRIEYZFSNVGICYQURXDCCNBZUIARXWUELWQPCKERYMKEAZPMPSJFODLFEGCVEZXEHFTJJCFHUXZWTJIONJPAXARJXBUTJXNJDYAAONEMLMKFTZNDFCZXNNZPANZXFSFDEADRLOBXYHOCWBNVEIYEEGXUFAJDUVIERTSSOCYXMKUBUOBNJLXQDXYAKGEVENKYOMKJIPXKJRVINATCVYEZQFMQTGMKVGFGALSMCCHFIIWDMAWZGHOZXKOAQQFGQQFKWPGVYISCBOTFJVUEAMEYEPSPMXRCWCKFYUUXHHDQSUFCZPZFTJAMKPKFYHHSQJGKIEGINKJLDRQXCRNRXNISLXAVNWRKOVBUNNYQRVBGKCISIIRULWMXEUWXRRJNMZAZJYEIKLUVGNXRKNRKTBJRCLAKXPOCMUEBUYDNLMFHEUHBADMIWYFCEXCFTLYJRXPLWYSHIOLPFKHBWJXIZTMBHFOBZBYSFESVTSBERKIJISNFKYNBLDYTFLSHGVKYJSOWOTVNCXV", 7520))

