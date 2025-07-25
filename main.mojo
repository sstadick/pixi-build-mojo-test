from ExtraMojo.cli.parser import OptParser, OptConfig, OptKind

from greetings import greet

def main():
	var parser = OptParser(name="greet", description="A friendly hello.")
	parser.add_opt(OptConfig("name", OptKind.StringLike, description="Who to greet."))

	var opts = parser.parse_sys_args()	

	print(greet(opts.get_string("name")))
