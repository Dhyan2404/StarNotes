.class public Lsun/awt/FontDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static isLE:Z


# instance fields
.field charsetName:Ljava/lang/String;

.field public encoder:Ljava/nio/charset/CharsetEncoder;

.field private exclusionRanges:[I

.field nativeName:Ljava/lang/String;

.field public unicodeEncoder:Ljava/nio/charset/CharsetEncoder;

.field useUnicode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lsun/awt/NativeLibLoader;->loadLibraries()V

    invoke-static {}, Lsun/awt/FontDescriptor;->initIDs()V

    new-instance v0, Lsun/security/action/GetPropertyAction;

    const-string v1, "sun.io.unicode.encoding"

    const-string v2, "UnicodeBig"

    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/awt/FontDescriptor;->isLE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/CharsetEncoder;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/awt/FontDescriptor;->nativeName:Ljava/lang/String;

    iput-object p2, p0, Lsun/awt/FontDescriptor;->encoder:Ljava/nio/charset/CharsetEncoder;

    iput-object p3, p0, Lsun/awt/FontDescriptor;->exclusionRanges:[I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsun/awt/FontDescriptor;->useUnicode:Z

    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object p1

    :try_start_0
    new-instance p2, Ljava/io/OutputStreamWriter;

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p2, p3, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->getEncoding()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/awt/FontDescriptor;->charsetName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getExclusionRanges()[I
    .locals 0

    iget-object p0, p0, Lsun/awt/FontDescriptor;->exclusionRanges:[I

    return-object p0
.end method

.method public getFontCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 0

    iget-object p0, p0, Lsun/awt/FontDescriptor;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-object p0
.end method

.method public getFontCharsetName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/awt/FontDescriptor;->charsetName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/awt/FontDescriptor;->nativeName:Ljava/lang/String;

    return-object p0
.end method

.method public isExcluded(C)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lsun/awt/FontDescriptor;->exclusionRanges:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    aget v1, v2, v1

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    if-lt p1, v1, :cond_0

    if-gt p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/awt/FontDescriptor;->nativeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/awt/FontDescriptor;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useUnicode()Z
    .locals 1

    iget-boolean v0, p0, Lsun/awt/FontDescriptor;->useUnicode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/awt/FontDescriptor;->unicodeEncoder:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_1

    :try_start_0
    sget-boolean v0, Lsun/awt/FontDescriptor;->isLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lsun/awt/FontDescriptor;->unicodeEncoder:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-boolean p0, p0, Lsun/awt/FontDescriptor;->useUnicode:Z

    return p0
.end method
