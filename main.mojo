from ExtraMojo.cli.parser import OptParser, OptConfig, OptKind
from small_time.small_time import now

from greetings import greet


def main():
    var parser = OptParser(name="greet", description="A friendly hello.")
    parser.add_opt(
        OptConfig("name", OptKind.StringLike, description="Who to greet.")
    )
    var opts = parser.parse_sys_args()
    print(now())
    print(greet(opts.get_string("name")))
