.class public Lnet/sf/saxon/str/StringConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ASTERISK:Lnet/sf/saxon/str/UnicodeString;

.field public static final COMMENT_END:[B

.field public static final COMMENT_START:[B

.field public static final EMPTY_TAG_END:[B

.field public static final EMPTY_TAG_END_XHTML:[B

.field public static final EMPTY_TAG_MIDDLE:[B

.field public static final END_TAG_START:[B

.field public static final ESCAPE_AMP:[B

.field public static final ESCAPE_APOS:[B

.field public static final ESCAPE_CR:[B

.field public static final ESCAPE_GT:[B

.field public static final ESCAPE_LT:[B

.field public static final ESCAPE_NBSP:[B

.field public static final ESCAPE_NL:[B

.field public static final ESCAPE_QUOT:[B

.field public static final ESCAPE_TAB:[B

.field public static final FALSE:Lnet/sf/saxon/str/UnicodeString;

.field public static final MIN_LONG:Lnet/sf/saxon/str/UnicodeString;

.field public static final NEWLINE:Lnet/sf/saxon/str/UnicodeString;

.field public static final ONE:Lnet/sf/saxon/str/UnicodeString;

.field public static final PI_END:[B

.field public static final PI_START:[B

.field public static final POINT_ZERO:Lnet/sf/saxon/str/UnicodeString;

.field public static final SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

.field public static final TRUE:Lnet/sf/saxon/str/UnicodeString;

.field public static final TWO_HYPHENS:[B

.field public static final ZERO:Lnet/sf/saxon/str/UnicodeString;

.field public static final ZERO_TO_NINE:Lnet/sf/saxon/str/UnicodeString;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, " "

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "\n"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->NEWLINE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "true"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->TRUE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "false"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->FALSE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "1"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ONE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "0"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ZERO:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "0123456789"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ZERO_TO_NINE:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "-9223372036854775808"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->MIN_LONG:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, ".0"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->POINT_ZERO:Lnet/sf/saxon/str/UnicodeString;

    new-instance v0, Lnet/sf/saxon/str/Twine8;

    const-string v1, "*"

    invoke-static {v1}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/str/Twine8;-><init>([B)V

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ASTERISK:Lnet/sf/saxon/str/UnicodeString;

    const-string v0, "<!--"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->COMMENT_START:[B

    const-string v0, "-->"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->COMMENT_END:[B

    const-string v0, "--"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->TWO_HYPHENS:[B

    const-string v0, "<?"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->PI_START:[B

    const-string v0, "?>"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->PI_END:[B

    const-string v0, "></"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_MIDDLE:[B

    const-string v0, "/>"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END:[B

    const-string v0, " />"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->EMPTY_TAG_END_XHTML:[B

    const-string v0, "</"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->END_TAG_START:[B

    const-string v0, "&lt;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_LT:[B

    const-string v0, "&gt;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_GT:[B

    const-string v0, "&amp;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_AMP:[B

    const-string v0, "&#xA;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NL:[B

    const-string v0, "&#xD;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_CR:[B

    const-string v0, "&#x9;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_TAB:[B

    const-string v0, "&#34;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_QUOT:[B

    const-string v0, "&#39;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_APOS:[B

    const-string v0, "&nbsp;"

    invoke-static {v0}, Lnet/sf/saxon/str/StringConstants;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/str/StringConstants;->ESCAPE_NBSP:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytes(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method
