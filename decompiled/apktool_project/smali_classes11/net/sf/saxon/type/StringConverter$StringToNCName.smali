.class public Lnet/sf/saxon/type/StringConverter$StringToNCName;
.super Lnet/sf/saxon/type/StringConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/StringConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringToNCName"
.end annotation


# static fields
.field public static final TO_ENTITY:Lnet/sf/saxon/type/StringConverter$StringToNCName;

.field public static final TO_ID:Lnet/sf/saxon/type/StringConverter$StringToNCName;

.field public static final TO_IDREF:Lnet/sf/saxon/type/StringConverter$StringToNCName;

.field public static final TO_NCNAME:Lnet/sf/saxon/type/StringConverter$StringToNCName;


# instance fields
.field public b:Lnet/sf/saxon/type/AtomicType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ID:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNCName;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ID:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->ENTITY:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNCName;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_ENTITY:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->NCNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNCName;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_NCNAME:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    new-instance v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->IDREF:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v0, v1}, Lnet/sf/saxon/type/StringConverter$StringToNCName;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    sput-object v0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->TO_IDREF:Lnet/sf/saxon/type/StringConverter$StringToNCName;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/type/AtomicType;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/StringConverter;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->b:Lnet/sf/saxon/type/AtomicType;

    return-void
.end method


# virtual methods
.method public convertString(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ConversionResult;
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lnet/sf/saxon/value/StringValue;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p1, v0, p0}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/type/AtomicType;)V

    return-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a valid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public validate(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/type/ValidationFailure;
    .locals 3

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->trim(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->codePoints()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Lnet/sf/saxon/z/IntIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/type/ValidationFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a valid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/type/StringConverter$StringToNCName;->b:Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/type/ValidationFailure;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
