.class public Lnet/sf/saxon/type/StringConverter$StringToName;
.super Lnet/sf/saxon/type/StringConverter$StringToNCName;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToName"
.end annotation


# static fields
.field public static final INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToName;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToName;

    invoke-direct {v0}, Lnet/sf/saxon/type/StringConverter$StringToName;-><init>()V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToName;->INSTANCE:Lnet/sf/saxon/type/StringConverter$StringToName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->NAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, v0}, Lnet/sf/saxon/type/StringConverter$StringToNCName;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/type/StringConverter$StringToName;->validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->NAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    :cond_0
    return-object p0
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3a

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a valid xs:Name"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
