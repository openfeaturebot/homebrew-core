class Openstackclient < Formula
  include Language::Python::Virtualenv

  desc "Command-line client for OpenStack"
  homepage "https://openstack.org"
  # TODO: remove `setuptools` from pypi_formula_mappings.json after https://review.opendev.org/c/openstack/pbr/+/924216
  url "https://files.pythonhosted.org/packages/0b/d1/77b84084d479ed27a523039d053ca7bbae49de61a603f1f8d6683791c412/python_openstackclient-7.3.0.tar.gz"
  sha256 "8df84100e53c8e7246bf07a177357f52d4086e05bcd7805d1a94666f42250e80"
  license "Apache-2.0"

  bottle do
    sha256 cellar: :any,                 arm64_sequoia: "921a8ce9ba7e73ed66b0d24197d60d7e45d14c9d543c31a5b48ec571f7af9933"
    sha256 cellar: :any,                 arm64_sonoma:  "67c0f0e4f3a30ea14c9c7a67f6bfa2cbd2d34124537bff884d16aca9cc16b507"
    sha256 cellar: :any,                 arm64_ventura: "7f97b1300341ced469ece45c2ca8c5fbc4e4a07270a2d409517214e42522872d"
    sha256 cellar: :any,                 sonoma:        "779c775ab57a3d64ab289b9589d4c683499204c4927f0c154761ca70e55992ed"
    sha256 cellar: :any,                 ventura:       "117bc64158d4cdb2f40f8be6af7ade4043fc0f61a628505e09e8a015db87b556"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "826b53c1d0134064d53f9ad8ca55048371e56bfc18d87a6d7a19c72695007a4e"
  end

  depends_on "rust" => :build # for rpds-py
  depends_on "certifi"
  depends_on "cryptography"
  depends_on "libyaml"
  depends_on "python@3.13"

  resource "pyinotify" do
    on_linux do
      url "https://files.pythonhosted.org/packages/e3/c0/fd5b18dde17c1249658521f69598f3252f11d9d7a980c5be8619970646e1/pyinotify-0.9.6.tar.gz"
      sha256 "9c998a5d7606ca835065cdabc013ae6c66eb9ea76a00a1e3bc6e0cfe2b4f71f4"
    end
  end

  resource "attrs" do
    url "https://files.pythonhosted.org/packages/49/7c/fdf464bcc51d23881d110abd74b512a42b3d5d376a55a831b44c603ae17f/attrs-25.1.0.tar.gz"
    sha256 "1c97078a80c814273a76b2a298a932eb681c87415c11dee0a6921de7f1b02c3e"
  end

  resource "autopage" do
    url "https://files.pythonhosted.org/packages/9f/9e/559b0cfdba9f3ed6744d8cbcdbda58880d3695c43c053a31773cefcedde3/autopage-0.5.2.tar.gz"
    sha256 "826996d74c5aa9f4b6916195547312ac6384bac3810b8517063f293248257b72"
  end

  resource "babel" do
    url "https://files.pythonhosted.org/packages/7d/6b/d52e42361e1aa00709585ecc30b3f9684b3ab62530771402248b1b1d6240/babel-2.17.0.tar.gz"
    sha256 "0c54cffb19f690cdcc52a3b50bcbf71e07a808d1c80d549f2459b9d2cf0afb9d"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "cliff" do
    url "https://files.pythonhosted.org/packages/62/44/e9073c882c9765074a1043f5004f31fd97c5c6571836e59987fa28781805/cliff-4.8.0.tar.gz"
    sha256 "23eff502e603cf0aa841eaea6662a42cd3064169162b3e596b20226400e34dfd"
  end

  resource "cmd2" do
    url "https://files.pythonhosted.org/packages/f7/2a/018fe937e25e1db0cafeb358c117644a58cdba24f5bbee69c003faf0b454/cmd2-2.5.11.tar.gz"
    sha256 "30a0d385021fbe4a4116672845e5695bbe56eb682f9096066776394f954a7429"
  end

  resource "debtcollector" do
    url "https://files.pythonhosted.org/packages/31/e2/a45b5a620145937529c840df5e499c267997e85de40df27d54424a158d3c/debtcollector-3.0.0.tar.gz"
    sha256 "2a8917d25b0e1f1d0d365d3c1c6ecfc7a522b1e9716e8a1a4a915126f7ccea6f"
  end

  resource "decorator" do
    url "https://files.pythonhosted.org/packages/66/0c/8d907af351aa16b42caae42f9d6aa37b900c67308052d10fdce809f8d952/decorator-5.1.1.tar.gz"
    sha256 "637996211036b6385ef91435e4fae22989472f9d571faba8927ba8253acbc330"
  end

  resource "dogpile-cache" do
    url "https://files.pythonhosted.org/packages/cb/b7/2fa37f52b4f38bc8eb6d4923163dd822ca6f9e2f817378478a5de73b239e/dogpile_cache-1.3.4.tar.gz"
    sha256 "4f0295575f5fdd3f7e13c84ba8e36656971d1869a2081b4737ec99ede378a8c0"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "iso8601" do
    url "https://files.pythonhosted.org/packages/b9/f3/ef59cee614d5e0accf6fd0cbba025b93b272e626ca89fb70a3e9187c5d15/iso8601-2.1.0.tar.gz"
    sha256 "6b1d3829ee8921c4301998c909f7829fa9ed3cbdac0d3b16af2d743aed1ba8df"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpath-rw" do
    url "https://files.pythonhosted.org/packages/71/7c/45001b1f19af8c4478489fbae4fc657b21c4c669d7a5a036a86882581d85/jsonpath-rw-1.4.0.tar.gz"
    sha256 "05c471281c45ae113f6103d1268ec7a4831a2e96aa80de45edc89b11fac4fbec"
  end

  resource "jsonpath-rw-ext" do
    url "https://files.pythonhosted.org/packages/d5/f0/5d865b2543be45e3ab7a8c2ae8dfa5c3e56cfdd48f19d4455eb02f370386/jsonpath-rw-ext-1.2.2.tar.gz"
    sha256 "a9e44e803b6d87d135b09d1e5af0db4d4cf97ba62711a80aa51c8c721980a994"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/6a/0a/eebeb1fa92507ea94016a2a790b93c2ae41a7e18778f85471dc54475ed25/jsonpointer-3.0.0.tar.gz"
    sha256 "2b2d729f2091522d61c3b31f82e11870f60b68f43fbc705cb76bf4b832af59ef"
  end

  resource "jsonschema" do
    url "https://files.pythonhosted.org/packages/38/2e/03362ee4034a4c917f697890ccd4aec0800ccf9ded7f511971c75451deec/jsonschema-4.23.0.tar.gz"
    sha256 "d71497fef26351a33265337fa77ffeb82423f3ea21283cd9467bb03999266bc4"
  end

  resource "jsonschema-specifications" do
    url "https://files.pythonhosted.org/packages/10/db/58f950c996c793472e336ff3655b13fbcf1e3b359dcf52dcf3ed3b52c352/jsonschema_specifications-2024.10.1.tar.gz"
    sha256 "0f38b83639958ce1152d02a7f062902c41c8fd20d558b0c34344292d417ae272"
  end

  resource "keystoneauth-websso" do
    url "https://files.pythonhosted.org/packages/bf/e0/f138694f014d5b43ecdec1e105db8a872c3f966ed4f96dbf736149f64ee6/keystoneauth_websso-0.2.0.tar.gz"
    sha256 "f381ad0583a1fe462630c939568c9f970dcdac1bb1915fd58fe8a1f126f0cc0a"
  end

  resource "keystoneauth1" do
    url "https://files.pythonhosted.org/packages/81/90/4057a98c59f5634c7404c09b849e030c528ed65924eea4cd4e01e43634ff/keystoneauth1-5.9.1.tar.gz"
    sha256 "fb0c66d842d5b964752264fff20b3b4ab73610d66d9b8d20d0dcf796ba09dc43"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/cb/d0/7555686ae7ff5731205df1012ede15dd9d927f6227ea151e901c7406af4f/msgpack-1.1.0.tar.gz"
    sha256 "dd432ccc2c72b914e4cb77afce64aab761c1137cc698be3984eee260bcb2896e"
  end

  resource "multipart" do
    url "https://files.pythonhosted.org/packages/df/91/6c93b6a95e6a99ef929a99d019fbf5b5f7fd3368389a0b1ec7ce0a23565b/multipart-1.2.1.tar.gz"
    sha256 "829b909b67bc1ad1c6d4488fcdc6391c2847842b08323addf5200db88dbe9480"
  end

  resource "netaddr" do
    url "https://files.pythonhosted.org/packages/54/90/188b2a69654f27b221fba92fda7217778208532c962509e959a9cee5229d/netaddr-1.3.0.tar.gz"
    sha256 "5c3c3d9895b551b763779ba7db7a03487dc1f8e3b385af819af341ae9ef6e48a"
  end

  resource "openstacksdk" do
    url "https://files.pythonhosted.org/packages/2e/dd/95d7d2b8dcc4d9043d9d67197a5b8e24e09c0001758e93cac3972dfee712/openstacksdk-4.3.0.tar.gz"
    sha256 "e8d211b12a81a9e76371ae4eddca97561ea1fdb50479f077400cf4472d2ad89c"
  end

  resource "os-client-config" do
    url "https://files.pythonhosted.org/packages/58/be/ba2e4d71dd57653c8fefe8577ade06bf5f87826e835b3c7d5bb513225227/os-client-config-2.1.0.tar.gz"
    sha256 "abc38a351f8c006d34f7ee5f3f648de5e3ecf6455cc5d76cfd889d291cdf3f4e"
  end

  resource "os-service-types" do
    url "https://files.pythonhosted.org/packages/58/3f/09e93eb484b69d2a0d31361962fb667591a850630c8ce47bb177324910ec/os-service-types-1.7.0.tar.gz"
    sha256 "31800299a82239363995b91f1ebf9106ac7758542a1e4ef6dc737a5932878c6c"
  end

  resource "osc-lib" do
    url "https://files.pythonhosted.org/packages/dc/db/0a907d200719f755f00579f116526abea404a8a7961d8cd4019f1e1235ed/osc-lib-3.2.0.tar.gz"
    sha256 "5f706be145daf0e58068e3763ec56bde2f43ed229a738628e4c0fb1defb4ed9e"
  end

  resource "osc-placement" do
    url "https://files.pythonhosted.org/packages/81/85/e6e14d13639656da6bf91f27376cf7352ea98b1624701868a097bf41020a/osc-placement-4.5.0.tar.gz"
    sha256 "831d67419d1efffba6f57cd228a9fdb169275647e4a9537eb275662656b7cd8f"
  end

  resource "oslo-config" do
    url "https://files.pythonhosted.org/packages/2e/e9/2cac91d42e8fb86b17ef8f350b523f70282fbc9f3a0785884e455b132e50/oslo.config-9.7.0.tar.gz"
    sha256 "b371ebf3f9a63e92b81d5c72b84d2f96f40553532699c68e1c5cd8ca9eca088b"
  end

  resource "oslo-context" do
    url "https://files.pythonhosted.org/packages/99/f3/1a7fa94ca9d7807f193c83ea403f8526e19301f0cecbf20bd6f35c29fcfb/oslo.context-5.7.0.tar.gz"
    sha256 "398c460b9cf7cb397ede7962223e4b88078fb2fbc53665a47a34e1b28890f4ce"
  end

  resource "oslo-i18n" do
    url "https://files.pythonhosted.org/packages/ca/a5/9ecdc0b2620efae576a7688283d34a2c273989e6e850ee9be8116296b7d5/oslo.i18n-6.5.0.tar.gz"
    sha256 "9393bcae92eadc5f771132d1c6ab239b19896ff6d885e3afc21a9faa4de924d3"
  end

  resource "oslo-log" do
    url "https://files.pythonhosted.org/packages/13/e2/d05278a88001733bc81cba10bd03ff9345693fef9c2821972c6b1a6aa48c/oslo.log-7.0.0.tar.gz"
    sha256 "eaca57fbd8a3d437cae32bac133101d22135abfc4fe6940d3db1b97f4facc16a"
  end

  resource "oslo-serialization" do
    url "https://files.pythonhosted.org/packages/1e/4e/54d2fc3c2a9620a9a7572bb89ca7bc2b02a1e0e511004f27eced4c613759/oslo.serialization-5.6.0.tar.gz"
    sha256 "4c7d4e12da853cc4f04b9123041134e886e8c9ff57ab57c1962d3ad4a87b7f7c"
  end

  resource "oslo-utils" do
    url "https://files.pythonhosted.org/packages/55/5e/6771dfa3f3e15158cc0b045fb92ea9e59e2fc1e6be59db35f70febd84355/oslo_utils-8.1.0.tar.gz"
    sha256 "53bfba7da00b2011cd741fe818694d07c309d502cd119a4335004a4ceefb7024"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "pbr" do
    url "https://files.pythonhosted.org/packages/01/d2/510cc0d218e753ba62a1bc1434651db3cd797a9716a0a66cc714cb4f0935/pbr-6.1.1.tar.gz"
    sha256 "93ea72ce6989eb2eed99d0f75721474f69ad88128afdef5ac377eb797c4bf76b"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/13/fc/128cc9cb8f03208bdbf93d3aa862e16d376844a14f9a0ce5cf4507372de4/platformdirs-4.3.6.tar.gz"
    sha256 "357fb2acbc885b0419afd3ce3ed34564c13c9b95c89360cd9563f73aa5e2b907"
  end

  resource "ply" do
    url "https://files.pythonhosted.org/packages/e5/69/882ee5c9d017149285cab114ebeab373308ef0f874fcdac9beb90e0ac4da/ply-3.11.tar.gz"
    sha256 "00c7c1aaa88358b9c765b6d3000c6eec0ba42abca5351b095321aef446081da3"
  end

  resource "prettytable" do
    url "https://files.pythonhosted.org/packages/02/7b/18bb59d7c3a4ac9ac7d986cfe49dd3c2e5f5ae3e65ca3db8816764e0c1df/prettytable-3.14.0.tar.gz"
    sha256 "b804b8d51db23959b96b329094debdbbdf10c8c3aa75958c5988cfd7f78501dd"
  end

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/9f/26/e25b4a374b4639e0c235527bbe31c0524f26eda701d79456a7e1877f4cc5/pyopenssl-25.0.0.tar.gz"
    sha256 "cd2cef799efa3936bb08e8ccb9433a575722b9dd986023f1cabc4ae64e9dac16"
  end

  resource "pyparsing" do
    url "https://files.pythonhosted.org/packages/8b/1a/3544f4f299a47911c2ab3710f534e52fea62a633c96806995da5d25be4b2/pyparsing-3.2.1.tar.gz"
    sha256 "61980854fd66de3a90028d679a954d5f2623e83144b5afe5ee86f43d762e5f0a"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end

  resource "python-barbicanclient" do
    url "https://files.pythonhosted.org/packages/6b/13/af3408d95dee59b1fc6110ed9c7c75e6374f822994ea9724e22bb5cf63e5/python-barbicanclient-7.0.0.tar.gz"
    sha256 "316af38a76d65a4af9135c700a7f3a46e2a5ab0485e93969687f6b62317295c7"
  end

  resource "python-cinderclient" do
    url "https://files.pythonhosted.org/packages/24/3d/361eec88417f075a2d3864d7f08ec26d80fdd37507d0808bb4090f8b456e/python-cinderclient-9.6.0.tar.gz"
    sha256 "3fefde268252e52e30fe2773f658227a78c6dee378fcb132d31c86e6ec9ba238"
  end

  resource "python-cloudkittyclient" do
    url "https://files.pythonhosted.org/packages/82/b3/14008dbf1d53d3b03356c397ea38fcea4c15299e0eddc5b420ee35f90d80/python-cloudkittyclient-5.3.0.tar.gz"
    sha256 "12be635d9dd8bc936df10dc76f6bbd32b67383342139b1c88c5209ba94c31e72"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "python-designateclient" do
    url "https://files.pythonhosted.org/packages/36/77/eaf20177b9db9f32c34887957195c473bf429cb3b67d15cb6d9bac4b3a08/python-designateclient-6.1.0.tar.gz"
    sha256 "1adc2a074b30d842cf9787f53310c37949195bf4e34da3984e5635b7b8a4689c"
  end

  resource "python-glanceclient" do
    url "https://files.pythonhosted.org/packages/97/d0/384228542e29f1b5719453ba936befdf22135031f3ce91fe6d3603219c39/python-glanceclient-4.7.0.tar.gz"
    sha256 "c19452ef12da3c484b69d22a888ce7a74910bdb8783bbe91248c60efa5378810"
  end

  resource "python-heatclient" do
    url "https://files.pythonhosted.org/packages/15/1a/d53aae3b7f281af51ee738b3b275ff781ee5b47e68992f8d90523624d9cd/python-heatclient-4.1.0.tar.gz"
    sha256 "d68499ce67031304e105b17c33f9ef63ffdac492f2414c4301539822c2ebf70d"
  end

  resource "python-ironicclient" do
    url "https://files.pythonhosted.org/packages/c9/be/c8fa91c8c3554eceff66ba998af9f8b90b94c467353e251c9c05618f4eb7/python-ironicclient-5.10.0.tar.gz"
    sha256 "120d9e6a4ae2e7ed613ee2b2abdf9fe1d2f7de297a1b82d82d9be85987d4e0b6"
  end

  resource "python-keystoneclient" do
    url "https://files.pythonhosted.org/packages/ea/5e/2d6700c6e36c288ec7e6d24ad49ef400311e8d2b2d926b16906f12c1cb26/python-keystoneclient-5.5.0.tar.gz"
    sha256 "c2f5934f95576936c98e45bf599ad48bcb0ac451593e5f8344ebf52cb0f411f5"
  end

  resource "python-magnumclient" do
    url "https://files.pythonhosted.org/packages/ff/ff/84ccfc18038df3e92aa92f3e0e1b65df702895c6eecb03e28c25f0996ad9/python-magnumclient-4.7.0.tar.gz"
    sha256 "463d2246242caf91720bdf598cfbd074656b215e2e0fc400b336cf997919e8e5"
  end

  resource "python-manilaclient" do
    url "https://files.pythonhosted.org/packages/d6/41/04e45b6795939d46e9391b4b3628c30519088f2a80ab10526869658e91d7/python-manilaclient-5.2.0.tar.gz"
    sha256 "6e49c3d4c4c3492edee12914a9ffb26a3e7b3dd49fcc60f2dcdbfea624082e58"
  end

  resource "python-mistralclient" do
    url "https://files.pythonhosted.org/packages/e0/43/827ecaffbd1140c646ea772863ded42e7340d4ecc632e565ba87271e5eb4/python-mistralclient-5.3.0.tar.gz"
    sha256 "afac5e4501e57d6a3fc12c6ba1508b2087c57b77d2caa1ff369a0a15674d94d9"
  end

  resource "python-neutronclient" do
    url "https://files.pythonhosted.org/packages/62/f5/43ac046c8bc32068faccd4d0b79e44c08ec96b7104a0ac70974c2a17ac76/python-neutronclient-11.4.0.tar.gz"
    sha256 "8741219362e4bf9c2e43f2e6cae4d4991ed8f9df9063f43408a0b658b03d62e2"
  end

  resource "python-octaviaclient" do
    url "https://files.pythonhosted.org/packages/39/06/e62c9dcd36ce16f5c5a1d7e94e68c1bf726cd3f886851df6e7082d46d1a3/python-octaviaclient-3.9.0.tar.gz"
    sha256 "71745e3887e00b9171e604f4bc5fe957b43012e0b661f9d6e0e13e9bb9eaaf6d"
  end

  resource "python-swiftclient" do
    url "https://files.pythonhosted.org/packages/1e/aa/77250fe47fcc62d4e97c921e853eaa717d1bd538527c2f249b29cc903a21/python-swiftclient-4.6.0.tar.gz"
    sha256 "d4d18540413893fc16ad87791d740f823f763435e8212e68eb53d60da2638233"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  resource "referencing" do
    url "https://files.pythonhosted.org/packages/2f/db/98b5c277be99dd18bfd91dd04e1b759cad18d1a338188c936e92f921c7e2/referencing-0.36.2.tar.gz"
    sha256 "df2e89862cd09deabbdba16944cc3f10feb6b3e6f18e902f7cc25609a34775aa"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "requestsexceptions" do
    url "https://files.pythonhosted.org/packages/82/ed/61b9652d3256503c99b0b8f145d9c8aa24c514caff6efc229989505937c1/requestsexceptions-1.4.0.tar.gz"
    sha256 "b095cbc77618f066d459a02b137b020c37da9f46d9b057704019c9f77dba3065"
  end

  resource "rfc3986" do
    url "https://files.pythonhosted.org/packages/85/40/1520d68bfa07ab5a6f065a186815fb6610c86fe957bc065754e47f7b0840/rfc3986-2.0.0.tar.gz"
    sha256 "97aacf9dbd4bfd829baad6e6309fa6573aaf1be3f6fa735c8ab05e46cecb261c"
  end

  resource "rpds-py" do
    url "https://files.pythonhosted.org/packages/01/80/cce854d0921ff2f0a9fa831ba3ad3c65cee3a46711addf39a2af52df2cfd/rpds_py-0.22.3.tar.gz"
    sha256 "e32fee8ab45d3c2db6da19a5323bc3362237c8b653c70194414b892fd06a080d"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/92/ec/089608b791d210aec4e7f97488e67ab0d33add3efccb83a056cbafe3a2a6/setuptools-75.8.0.tar.gz"
    sha256 "c5afc8f407c626b8313a86e10311dd3f661c6cd9c09d4bf8c15c0e11f9f2b0e6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "stevedore" do
    url "https://files.pythonhosted.org/packages/4a/e9/4eedccff8332cc40cc60ddd3b28d4c3e255ee7e9c65679fa4533ab98f598/stevedore-5.4.0.tar.gz"
    sha256 "79e92235ecb828fe952b6b8b0c6c87863248631922c8e8e0fa5b17b232c4514d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "tzdata" do
    url "https://files.pythonhosted.org/packages/43/0f/fa4723f22942480be4ca9527bbde8d43f6c3f2fe8412f00e7f5f6746bc8b/tzdata-2025.1.tar.gz"
    sha256 "24894909e88cdb28bd1636c6887801df64cb485bd593f2fd83ef29075a81d694"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  resource "warlock" do
    url "https://files.pythonhosted.org/packages/de/cf/ba9ac96d09b797c377e2c12c0eb6b19565f3b2a2efb55932d319e319b622/warlock-2.0.1.tar.gz"
    sha256 "99abbf9525b2a77f2cde896d3a9f18a5b4590db063db65e08207694d2e0137fc"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/c3/fc/e91cc220803d7bc4db93fb02facd8461c37364151b8494762cc88b0fbcef/wrapt-1.17.2.tar.gz"
    sha256 "41388e9d4d1522446fe79d3213196bd9e3b301a336965b9e27ca2788ebd122f3"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"openstack", "-h"
    openstack_subcommands = [
      "server list",
      "resource provider list", # osc-placement
      "stack list", # python-heatclient
      "loadbalancer list", # python-octaviaclient
      "rating summary get", # python-cloudkittyclient
      "zone list", # python-designateclient
      "secret list", # python-barbicanclient
      "share list", # python-manliaclient
      "workflow list", # python-mistralclient
      "coe cluster list", # python-magnumclient
      "baremetal node list", # python-ironicclient
    ]
    openstack_subcommands.each do |subcommand|
      output = shell_output("#{bin}/openstack #{subcommand} 2>&1", 1)
      assert_match "Missing value auth-url required", output
    end
  end
end
