.class public Lsun/font/FontFamily;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static allLocaleNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lsun/font/FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lsun/font/FontFamily;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bold:Lsun/font/Font2D;

.field protected bolditalic:Lsun/font/Font2D;

.field protected familyName:Ljava/lang/String;

.field protected familyRank:I

.field private familyWidth:I

.field protected italic:Lsun/font/Font2D;

.field protected logicalFont:Z

.field protected plain:Lsun/font/Font2D;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lsun/font/FontFamily;->familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lsun/font/FontFamily;->familyWidth:I

    .line 9
    iput-boolean v0, p0, Lsun/font/FontFamily;->logicalFont:Z

    .line 10
    iput-object p1, p0, Lsun/font/FontFamily;->familyName:Ljava/lang/String;

    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lsun/font/FontFamily;->familyRank:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lsun/font/FontFamily;->familyWidth:I

    .line 3
    iput-boolean p2, p0, Lsun/font/FontFamily;->logicalFont:Z

    .line 4
    iput-object p1, p0, Lsun/font/FontFamily;->familyName:Ljava/lang/String;

    .line 5
    iput p3, p0, Lsun/font/FontFamily;->familyRank:I

    .line 6
    sget-object p2, Lsun/font/FontFamily;->familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized addLocaleNames(Lsun/font/FontFamily;[Ljava/lang/String;)V
    .locals 4

    const-class v0, Lsun/font/FontFamily;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontFamily;->allLocaleNames:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsun/font/FontFamily;->allLocaleNames:Ljava/util/HashMap;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    sget-object v2, Lsun/font/FontFamily;->allLocaleNames:Ljava/util/HashMap;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private closerWeight(Lsun/font/Font2D;Lsun/font/Font2D;I)Z
    .locals 3

    iget p0, p0, Lsun/font/FontFamily;->familyWidth:I

    invoke-virtual {p2}, Lsun/font/Font2D;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New weight for style "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Curr.font="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " New font="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Curr.weight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsun/font/Font2D;->getWeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " New weight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsun/font/Font2D;->getWeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lsun/font/Font2D;->getWeight()I

    move-result p2

    if-eqz p3, :cond_5

    if-eq p3, p0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, 0x3

    if-eq p3, v0, :cond_3

    return v1

    :cond_3
    add-int/lit16 p2, p2, -0x2bc

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Lsun/font/Font2D;->getWeight()I

    move-result p1

    add-int/lit16 p1, p1, -0x2bc

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p2, p1, :cond_4

    move v1, p0

    :cond_4
    return v1

    :cond_5
    const/16 p3, 0x190

    if-gt p2, p3, :cond_6

    invoke-virtual {p1}, Lsun/font/Font2D;->getWeight()I

    move-result p1

    if-le p2, p1, :cond_6

    move v1, p0

    :cond_6
    return v1
.end method

.method public static getAllFamilyNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAllFontFamilies()[Lsun/font/FontFamily;
    .locals 2

    sget-object v0, Lsun/font/FontFamily;->familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lsun/font/FontFamily;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/font/FontFamily;

    return-object v0
.end method

.method public static getFamily(Ljava/lang/String;)Lsun/font/FontFamily;
    .locals 2

    sget-object v0, Lsun/font/FontFamily;->familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/FontFamily;

    return-object p0
.end method

.method public static declared-synchronized getLocaleFamily(Ljava/lang/String;)Lsun/font/FontFamily;
    .locals 2

    const-class v0, Lsun/font/FontFamily;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsun/font/FontFamily;->allLocaleNames:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsun/font/FontFamily;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isFromSameSource(Lsun/font/Font2D;)Z
    .locals 3

    instance-of v0, p1, Lsun/font/FileFont;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    instance-of v2, v0, Lsun/font/FileFont;

    if-eqz v2, :cond_1

    check-cast v0, Lsun/font/FileFont;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    instance-of v2, v0, Lsun/font/FileFont;

    if-eqz v2, :cond_2

    check-cast v0, Lsun/font/FileFont;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    instance-of v2, v0, Lsun/font/FileFont;

    if-eqz v2, :cond_3

    check-cast v0, Lsun/font/FileFont;

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    instance-of v0, p0, Lsun/font/FileFont;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Lsun/font/FileFont;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    return v1

    :cond_5
    new-instance p0, Ljava/io/File;

    iget-object v0, v0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    check-cast p1, Lsun/font/FileFont;

    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    if-eqz p1, :cond_7

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_7
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private preferredWidth(Lsun/font/Font2D;)Z
    .locals 4

    invoke-virtual {p1}, Lsun/font/Font2D;->getWidth()I

    move-result v0

    iget v1, p0, Lsun/font/FontFamily;->familyWidth:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iput v0, p0, Lsun/font/FontFamily;->familyWidth:I

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    rsub-int/lit8 v1, v0, 0x5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lsun/font/FontFamily;->familyWidth:I

    rsub-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found more preferred width. New width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Old width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lsun/font/FontFamily;->familyWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in font "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " nulling out fonts plain: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bold: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " italic: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " bolditalic: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_2
    iput v0, p0, Lsun/font/FontFamily;->familyWidth:I

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    iput-object p1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    iput-object p1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    iput-object p1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return v2

    :cond_3
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Family rejecting font "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " of less preferred width "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static remove(Lsun/font/Font2D;)V
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontFamily;->getFamily(Ljava/lang/String;)Lsun/font/FontFamily;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    const/4 v3, 0x0

    if-ne v2, p0, :cond_1

    iput-object v3, v1, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    :cond_1
    iget-object v2, v1, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-ne v2, p0, :cond_2

    iput-object v3, v1, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    :cond_2
    iget-object v2, v1, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-ne v2, p0, :cond_3

    iput-object v3, v1, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    :cond_3
    iget-object v2, v1, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    if-ne v2, p0, :cond_4

    iput-object v3, v1, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    :cond_4
    iget-object p0, v1, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-nez p0, :cond_5

    iget-object p0, v1, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-nez p0, :cond_5

    iget-object p0, v1, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-nez p0, :cond_5

    iget-object p0, v1, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    if-nez p0, :cond_5

    sget-object p0, Lsun/font/FontFamily;->familyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method public getClosestStyle(I)Lsun/font/Font2D;
    .locals 1

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0

    :cond_3
    iget-object p1, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    iget-object p1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    iget-object p0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    return-object p0

    :cond_6
    iget-object p1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    iget-object p1, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    iget-object p0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    return-object p0

    :cond_9
    iget-object p1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-eqz p1, :cond_a

    return-object p1

    :cond_a
    iget-object p1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    iget-object p0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    return-object p0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsun/font/FontFamily;->familyName:Ljava/lang/String;

    return-object p0
.end method

.method public getFont(I)Lsun/font/Font2D;
    .locals 2

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    return-object p0

    :cond_2
    iget-object v0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    return-object p0

    :cond_3
    iget-object v0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    iget-object v0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    iget-object v0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    iget-object v0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    if-eqz v0, :cond_9

    return-object v0

    :cond_9
    iget-object v0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lsun/font/Font2D;->canDoStyle(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0

    :cond_a
    return-object v1

    :cond_b
    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0
.end method

.method public getFontWithExactStyleMatch(I)Lsun/font/Font2D;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    return-object p0

    :cond_1
    iget-object p0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    return-object p0

    :cond_2
    iget-object p0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    return-object p0

    :cond_3
    iget-object p0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lsun/font/FontFamily;->familyRank:I

    return p0
.end method

.method public setFont(Lsun/font/Font2D;I)V
    .locals 4

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    const-string v1, " to family "

    if-eqz v0, :cond_1

    instance-of v0, p1, Lsun/font/CompositeFont;

    const-string v2, " with style "

    const-string v3, "Request to add "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lsun/font/Font2D;->getFamilyName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lsun/font/FontFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lsun/font/FontUtilities;->logInfo(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lsun/font/Font2D;->getRank()I

    move-result v0

    iget v2, p0, Lsun/font/FontFamily;->familyRank:I

    if-le v0, v2, :cond_3

    invoke-direct {p0, p1}, Lsun/font/FontFamily;->isFromSameSource(Lsun/font/Font2D;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rejecting adding "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of lower rank "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lsun/font/Font2D;->getRank()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " of rank "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsun/font/FontFamily;->familyRank:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lsun/font/FontFamily;->preferredWidth(Lsun/font/Font2D;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    invoke-direct {p0, v0, p1, p2}, Lsun/font/FontFamily;->closerWeight(Lsun/font/Font2D;Lsun/font/Font2D;I)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lsun/font/FontFamily;->preferredWidth(Lsun/font/Font2D;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    invoke-direct {p0, v0, p1, p2}, Lsun/font/FontFamily;->closerWeight(Lsun/font/Font2D;Lsun/font/Font2D;I)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lsun/font/FontFamily;->preferredWidth(Lsun/font/Font2D;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    invoke-direct {p0, v0, p1, p2}, Lsun/font/FontFamily;->closerWeight(Lsun/font/Font2D;Lsun/font/Font2D;I)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Lsun/font/FontFamily;->preferredWidth(Lsun/font/Font2D;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    invoke-direct {p0, v0, p1, p2}, Lsun/font/FontFamily;->closerWeight(Lsun/font/Font2D;Lsun/font/Font2D;I)Z

    move-result p2

    if-eqz p2, :cond_8

    iput-object p1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    :cond_8
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font family: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/FontFamily;->familyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/FontFamily;->plain:Lsun/font/Font2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/FontFamily;->bold:Lsun/font/Font2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/FontFamily;->italic:Lsun/font/Font2D;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bolditalic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/font/FontFamily;->bolditalic:Lsun/font/Font2D;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
