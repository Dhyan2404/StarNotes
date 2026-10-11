.class public Lsun/font/Type1Font;
.super Lsun/font/FileFont;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/font/Type1Font$T1DisposerRecord;
    }
.end annotation


# static fields
.field private static final PSEOFTOKEN:I = 0x0

.field private static final PSNAMETOKEN:I = 0x1

.field private static final PSSTRINGTOKEN:I = 0x2

.field private static styleAbbreviationsMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static styleNameTokes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bufferRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private psName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 41

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/font/Type1Font;->styleAbbreviationsMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lsun/font/Type1Font;->styleNameTokes:Ljava/util/HashSet;

    const-string v1, "Black"

    const-string v2, "Bold"

    const-string v3, "Book"

    const-string v4, "Demi"

    const-string v5, "Heavy"

    const-string v6, "Light"

    const-string v7, "Meduium"

    const-string v8, "Nord"

    const-string v9, "Poster"

    const-string v10, "Regular"

    const-string v11, "Super"

    const-string v12, "Thin"

    const-string v13, "Compressed"

    const-string v14, "Condensed"

    const-string v15, "Compact"

    const-string v16, "Extended"

    const-string v17, "Narrow"

    const-string v18, "Inclined"

    const-string v19, "Italic"

    const-string v20, "Kursiv"

    const-string v21, "Oblique"

    const-string v22, "Upright"

    const-string v23, "Sloped"

    const-string v24, "Semi"

    const-string v25, "Ultra"

    const-string v26, "Extra"

    const-string v27, "Alternate"

    const-string v28, "Alternate"

    const-string v29, "Deutsche Fraktur"

    const-string v30, "Expert"

    const-string v31, "Inline"

    const-string v32, "Ornaments"

    const-string v33, "Outline"

    const-string v34, "Roman"

    const-string v35, "Rounded"

    const-string v36, "Script"

    const-string v37, "Shaded"

    const-string v38, "Swash"

    const-string v39, "Titling"

    const-string v40, "Typewriter"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "Blk"

    const-string v2, "Bd"

    const-string v3, "Bk"

    const-string v4, "Dm"

    const-string v5, "Hv"

    const-string v6, "Lt"

    const-string v7, "Md"

    const-string v8, "Nd"

    const-string v9, "Po"

    const-string v10, "Rg"

    const-string v11, "Su"

    const-string v12, "Th"

    const-string v13, "Cm"

    const-string v14, "Cn"

    const-string v15, "Ct"

    const-string v16, "Ex"

    const-string v17, "Nr"

    const-string v18, "Ic"

    const-string v19, "It"

    const-string v20, "Ks"

    const-string v21, "Obl"

    const-string v22, "Up"

    const-string v23, "Sl"

    const-string v24, "Sm"

    const-string v25, "Ult"

    const-string v26, "X"

    const-string v27, "A"

    const-string v28, "Alt"

    const-string v29, "Dfr"

    const-string v30, "Exp"

    const-string v31, "In"

    const-string v32, "Or"

    const-string v33, "Ou"

    const-string v34, "Rm"

    const-string v35, "Rd"

    const-string v36, "Scr"

    const-string v37, "Sh"

    const-string v38, "Sw"

    const-string v39, "Ti"

    const-string v40, "Typ"

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Black"

    const-string v3, "Bold"

    const-string v4, "Book"

    const-string v5, "Demi"

    const-string v6, "Heavy"

    const-string v7, "Light"

    const-string v8, "Medium"

    const-string v9, "Nord"

    const-string v10, "Poster"

    const-string v11, "Regular"

    const-string v12, "Super"

    const-string v13, "Thin"

    const-string v14, "Compressed"

    const-string v15, "Condensed"

    const-string v16, "Compact"

    const-string v17, "Extended"

    const-string v18, "Narrow"

    const-string v19, "Inclined"

    const-string v20, "Italic"

    const-string v21, "Kursiv"

    const-string v22, "Oblique"

    const-string v23, "Upright"

    const-string v24, "Sloped"

    const-string v25, "Slanted"

    const-string v26, "Semi"

    const-string v27, "Ultra"

    const-string v28, "Extra"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0x28

    if-ge v4, v5, :cond_0

    sget-object v5, Lsun/font/Type1Font;->styleAbbreviationsMapping:Ljava/util/HashMap;

    aget-object v6, v1, v4

    aget-object v7, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v0, 0x1b

    if-ge v3, v0, :cond_1

    sget-object v0, Lsun/font/Type1Font;->styleNameTokes:Ljava/util/HashSet;

    aget-object v1, v2, v3

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsun/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lsun/font/FileFont;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lsun/font/Type1Font;->bufferRef:Ljava/lang/ref/WeakReference;

    .line 4
    iput-object v0, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    const/4 p2, 0x4

    .line 5
    iput p2, p0, Lsun/font/Font2D;->fontRank:I

    .line 6
    :try_start_0
    invoke-direct {p0}, Lsun/font/Type1Font;->verify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    if-eqz p3, :cond_0

    .line 7
    new-instance p3, Lsun/font/Type1Font$T1DisposerRecord;

    invoke-direct {p3, p1}, Lsun/font/Type1Font$T1DisposerRecord;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lsun/font/Type1Font;->bufferRef:Ljava/lang/ref/WeakReference;

    invoke-static {p1, p3}, Lsun/java2d/Disposer;->addObjectRecord(Ljava/lang/Object;Lsun/java2d/DisposerRecord;)V

    .line 9
    iput-object v0, p0, Lsun/font/Type1Font;->bufferRef:Ljava/lang/ref/WeakReference;

    .line 10
    :cond_0
    instance-of p0, p2, Ljava/awt/FontFormatException;

    if-eqz p0, :cond_1

    .line 11
    check-cast p2, Ljava/awt/FontFormatException;

    throw p2

    .line 12
    :cond_1
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "Unexpected runtime exception."

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private expandAbbreviation(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lsun/font/Type1Font;->styleAbbreviationsMapping:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lsun/font/Type1Font;->styleAbbreviationsMapping:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    return-object p1
.end method

.method private expandName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2}, Lsun/font/Type1Font;->nextCapitalLetter(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/font/Type1Font;->expandAbbreviation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fullName2FamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-lez v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/font/Type1Font;->isStyleToken(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private declared-synchronized getBuffer()Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/Type1Font;->bufferRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lsun/font/Type1Font$1;

    invoke-direct {v0, p0}, Lsun/font/Type1Font$1;-><init>(Lsun/font/Type1Font;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, p0, Lsun/font/FileFont;->fileSize:I

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    int-to-long v5, v1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lsun/font/Type1Font;->bufferRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/awt/FontFormatException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-direct {p0}, Lsun/font/Type1Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_2
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/awt/FontFormatException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-le v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "US-ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "US-ASCII"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private initNames(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-nez v1, :cond_7

    :cond_1
    if-nez v2, :cond_7

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->nextTokenType(Ljava/nio/ByteBuffer;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v5, 0x46

    if-ne v3, v5, :cond_5

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FullName"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->nextTokenType(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v5, "FamilyName"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->nextTokenType(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "FontName"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->nextTokenType(Ljava/nio/ByteBuffer;)I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string v4, "FontType"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "def"

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto/16 :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_6
    if-nez v3, :cond_0

    move v2, v4

    goto/16 :goto_0

    :cond_7
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    if-nez v1, :cond_b

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, 0x2521

    if-eq v0, v1, :cond_8

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FontType1-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "PS-AdobeFont-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/awt/FontFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported font format ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Lsun/font/Type1Font;->getSimpleToken(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    :cond_b
    if-eqz v2, :cond_e

    iget-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->fullName2FamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object p1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz p1, :cond_d

    iput-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->psName2FullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    iget-object p1, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lsun/font/Type1Font;->psName2FamilyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    :cond_e
    :goto_3
    return-void

    :cond_f
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "Unsupported font type"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/awt/FontFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isStyleToken(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lsun/font/Type1Font;->styleNameTokes:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private nextCapitalLetter(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p2, p0, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private nextTokenType(Ljava/nio/ByteBuffer;)I
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lsun/font/Type1Font;->skip(Ljava/nio/ByteBuffer;)B

    move-result v0

    :goto_0
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lsun/font/Type1Font;->skip(Ljava/nio/ByteBuffer;)B

    move-result v0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private psName2FamilyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, v2}, Lsun/font/Type1Font;->expandName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private psName2FullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lsun/font/Type1Font;->expandName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lsun/font/Type1Font;->expandName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v1}, Lsun/font/Type1Font;->expandName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private skip(Ljava/nio/ByteBuffer;)B
    .locals 1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    :cond_0
    :goto_0
    const/16 v0, 0x25

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x20

    if-gt p0, v0, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    goto :goto_1

    :cond_3
    return p0
.end method

.method private verify()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/font/Type1Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x80

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v0}, Lsun/font/Type1Font;->verifyPFB(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lsun/font/Type1Font;->verifyPFA(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-direct {p0, v0}, Lsun/font/Type1Font;->initNames(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/font/Font2D;->setStyle()V

    return-void

    :cond_1
    new-instance p0, Ljava/awt/FontFormatException;

    const-string v0, "Font name not found"

    invoke-direct {p0, v0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/awt/FontFormatException;

    const-string v0, "short file"

    invoke-direct {p0, v0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyPFA(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    const/16 p1, 0x2521

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "bad pfa font"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyPFB(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/awt/FontFormatException;
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const v1, 0x8001

    if-eq v0, v1, :cond_2

    const v1, 0x8002

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const p0, 0x8003

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "bad pfb file"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, p0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, 0x6

    add-int/2addr p0, v0

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/awt/FontFormatException;

    const-string p1, "bad segment length"

    invoke-direct {p0, p1}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/awt/FontFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/awt/FontFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/FontFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lsun/font/FileFont;->fileSize:I

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lsun/font/Type1Font;->getBuffer()Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget p0, p0, Lsun/font/FileFont;->fileSize:I

    return p0
.end method

.method public getGlyphCode(C)I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/Type1Font;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/FontScaler;->getGlyphCode(C)I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1}, Lsun/font/Type1Font;->getGlyphCode(C)I

    move-result p0

    return p0
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 1

    iget-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    if-nez v0, :cond_0

    new-instance v0, Lsun/font/Type1GlyphMapper;

    invoke-direct {v0, p0}, Lsun/font/Type1GlyphMapper;-><init>(Lsun/font/Type1Font;)V

    iput-object v0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    :cond_0
    iget-object p0, p0, Lsun/font/Font2D;->mapper:Lsun/font/CharToGlyphMapper;

    return-object p0
.end method

.method public getMissingGlyphCode()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/Type1Font;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/FontScaler;->getMissingGlyphCode()I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0}, Lsun/font/Type1Font;->getMissingGlyphCode()I

    move-result p0

    return p0
.end method

.method public getNumGlyphs()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lsun/font/Type1Font;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/FontScaler;->getNumGlyphs()I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0}, Lsun/font/Type1Font;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getPostscriptName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/Type1Font;->psName:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getScaler()Lsun/font/FontScaler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    if-nez v0, :cond_0

    iget v0, p0, Lsun/font/FileFont;->fileSize:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v0}, Lsun/font/FontScaler;->getScaler(Lsun/font/Font2D;IZI)Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;

    :cond_0
    iget-object v0, p0, Lsun/font/FileFont;->scaler:Lsun/font/FontScaler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readBlock(II)Ljava/nio/ByteBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lsun/font/Type1Font;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iget v0, p0, Lsun/font/FileFont;->fileSize:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/awt/FontFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public readFile(Ljava/nio/ByteBuffer;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lsun/font/Type1Font$2;

    invoke-direct {v1, p0}, Lsun/font/Type1Font$2;-><init>(Lsun/font/Type1Font;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_6

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-object v0, v1

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    goto :goto_6

    :catch_3
    move-object v1, v0

    :catch_4
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_5
    :cond_1
    move-object v0, v1

    :goto_3
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    invoke-virtual {p0, p1}, Lsun/font/Type1Font;->readFile(Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    :goto_4
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_6
    :cond_2
    throw p0

    :catch_7
    :goto_5
    if-eqz v0, :cond_3

    goto :goto_2

    :catch_8
    :cond_3
    :goto_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "** Type1 Font: Family="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/Font2D;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/Font2D;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsun/font/Font2D;->style:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/font/FileFont;->getPublicFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
