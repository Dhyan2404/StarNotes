.class Lsun/awt/FontConfiguration$PropertiesHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/FontConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertiesHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;
    }
.end annotation


# instance fields
.field private alphabeticSuffix:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private appendedfontpath:Ljava/lang/String;

.field private awtfontpaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private componentFontNameIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private elcIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private exclusions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "[I>;"
        }
    .end annotation
.end field

.field private fallbackScriptIDs:[S

.field private filenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private fontStyleIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fontfileNameIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private logicalFontIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private proportionals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private scriptAllfonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private scriptAllfontsMotif:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private scriptFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "[",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private scriptFontsMotif:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "[",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private scriptIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private sequences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "[S>;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$2300(Lsun/awt/FontConfiguration$PropertiesHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->parseProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Short;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Short;

    :cond_0
    return-object p0
.end method

.method private initBinaryTable()V
    .locals 14

    const/16 v0, 0x14

    new-array v1, v0, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$002([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    const/4 v2, 0x0

    aput-short v0, v1, v2

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$200(Ljava/util/HashMap;)[S

    move-result-object v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$102([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v2

    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v4

    array-length v4, v4

    add-int/2addr v3, v4

    int-to-short v3, v3

    const/4 v4, 0x1

    aput-short v3, v1, v4

    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v1

    array-length v1, v1

    iget-object v3, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFonts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$302([S)[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfonts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$300()[S

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->intValue()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v5, v6

    goto :goto_0

    :cond_0
    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v1

    array-length v1, v1

    iget-object v3, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFonts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$300()[S

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->intValue()I

    move-result v7

    neg-int v8, v1

    int-to-short v8, v8

    aput-short v8, v6, v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Short;

    move v6, v2

    :goto_1
    if-ge v6, v0, :cond_1

    aget-object v7, v5, v6

    if-eqz v7, :cond_2

    invoke-static {}, Lsun/awt/FontConfiguration;->access$300()[S

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    aput-short v9, v7, v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lsun/awt/FontConfiguration;->access$300()[S

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    aput-short v2, v7, v1

    :goto_2
    move v1, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v4

    invoke-static {}, Lsun/awt/FontConfiguration;->access$300()[S

    move-result-object v5

    array-length v5, v5

    add-int/2addr v3, v5

    int-to-short v3, v3

    const/4 v5, 0x2

    aput-short v3, v1, v5

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->elcIDs:Ljava/util/HashMap;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$200(Ljava/util/HashMap;)[S

    move-result-object v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$402([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v5

    invoke-static {}, Lsun/awt/FontConfiguration;->access$400()[S

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/4 v6, 0x3

    aput-short v3, v1, v6

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->elcIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v3, 0x5

    mul-int/2addr v1, v3

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$502([S)[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->sequences:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [S

    array-length v9, v7

    if-ne v9, v4, :cond_5

    move v9, v2

    :goto_3
    if-ge v9, v3, :cond_4

    invoke-static {}, Lsun/awt/FontConfiguration;->access$500()[S

    move-result-object v10

    mul-int/lit8 v11, v8, 0x5

    add-int/2addr v11, v9

    aget-short v12, v7, v2

    aput-short v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v2

    :goto_4
    if-ge v9, v3, :cond_4

    invoke-static {}, Lsun/awt/FontConfiguration;->access$500()[S

    move-result-object v10

    mul-int/lit8 v11, v8, 0x5

    add-int/2addr v11, v9

    aget-short v12, v7, v9

    aput-short v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v7

    aget-short v6, v7, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$500()[S

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x4

    aput-short v6, v1, v7

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontfileNameIDs:Ljava/util/HashMap;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$200(Ljava/util/HashMap;)[S

    move-result-object v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$602([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v6

    aget-short v6, v6, v7

    invoke-static {}, Lsun/awt/FontConfiguration;->access$600()[S

    move-result-object v7

    array-length v7, v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v1, v3

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$200(Ljava/util/HashMap;)[S

    move-result-object v1

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$702([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v6

    aget-short v3, v6, v3

    invoke-static {}, Lsun/awt/FontConfiguration;->access$700()[S

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/4 v6, 0x6

    aput-short v3, v1, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$700()[S

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$802([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$800()[S

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([SS)V

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->filenames:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$800()[S

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v7, v8

    goto :goto_5

    :cond_7
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$800()[S

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/4 v6, 0x7

    aput-short v3, v1, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [S

    sput-object v1, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->awtfontpaths:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v7, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v7, v8

    goto :goto_6

    :cond_8
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v6

    sget-object v6, Lsun/awt/FontConfiguration;->table_awtfontpaths:[S

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/16 v6, 0x8

    aput-short v3, v1, v6

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$902([S)[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->exclusions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    array-length v8, v7

    mul-int/2addr v8, v5

    new-array v8, v8, [C

    move v9, v2

    move v10, v9

    :goto_8
    array-length v11, v7

    if-ge v9, v11, :cond_9

    add-int/lit8 v11, v10, 0x1

    aget v12, v7, v9

    shr-int/lit8 v13, v12, 0x10

    int-to-char v13, v13

    aput-char v13, v8, v10

    add-int/lit8 v10, v11, 0x1

    const v13, 0xffff

    and-int/2addr v12, v13

    int-to-char v12, v12

    aput-char v12, v8, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    invoke-static {}, Lsun/awt/FontConfiguration;->access$900()[S

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    invoke-static {v9}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result v8

    aput-short v8, v7, v3

    goto :goto_7

    :cond_a
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$900()[S

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/16 v6, 0x9

    aput-short v3, v1, v6

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->proportionals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    mul-int/2addr v1, v5

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$1102([S)[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->proportionals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1100()[S

    move-result-object v8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Short;

    invoke-virtual {v10}, Ljava/lang/Short;->shortValue()S

    move-result v10

    aput-short v10, v8, v3

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1100()[S

    move-result-object v3

    add-int/lit8 v8, v9, 0x1

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    aput-short v7, v3, v9

    move v3, v8

    goto :goto_9

    :cond_b
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v3

    aget-short v3, v3, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1100()[S

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    int-to-short v3, v3

    const/16 v6, 0xa

    aput-short v3, v1, v6

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfontsMotif:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    invoke-static {}, Lsun/awt/FontConfiguration;->access$1300()[S

    move-result-object v0

    invoke-static {v0}, Lsun/awt/FontConfiguration;->access$1202([S)[S

    goto/16 :goto_e

    :cond_d
    :goto_a
    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v1

    array-length v1, v1

    iget-object v3, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    new-array v1, v1, [S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$1202([S)[S

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfontsMotif:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1200()[S

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->intValue()I

    move-result v8

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v7, v8

    goto :goto_b

    :cond_e
    invoke-static {}, Lsun/awt/FontConfiguration;->access$100()[S

    move-result-object v1

    array-length v1, v1

    iget-object v3, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1200()[S

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->intValue()I

    move-result v9

    neg-int v10, v1

    int-to-short v10, v10

    aput-short v10, v8, v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Short;

    move v8, v2

    :goto_c
    if-ge v8, v0, :cond_f

    aget-object v9, v7, v8

    if-eqz v9, :cond_10

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1200()[S

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    aget-object v11, v7, v8

    invoke-virtual {v11}, Ljava/lang/Short;->shortValue()S

    move-result v11

    aput-short v11, v9, v1

    goto :goto_d

    :cond_10
    invoke-static {}, Lsun/awt/FontConfiguration;->access$1200()[S

    move-result-object v9

    add-int/lit8 v10, v1, 0x1

    aput-short v2, v9, v1

    :goto_d
    move v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_11
    :goto_e
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v1

    aget-short v1, v1, v6

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1200()[S

    move-result-object v3

    array-length v3, v3

    add-int/2addr v1, v3

    int-to-short v1, v1

    const/16 v3, 0xb

    aput-short v1, v0, v3

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->alphabeticSuffix:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    mul-int/2addr v0, v5

    new-array v0, v0, [S

    invoke-static {v0}, Lsun/awt/FontConfiguration;->access$1402([S)[S

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->alphabeticSuffix:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1400()[S

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Short;

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    aput-short v8, v6, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1400()[S

    move-result-object v1

    add-int/lit8 v6, v7, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    aput-short v5, v1, v7

    move v1, v6

    goto :goto_f

    :cond_12
    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fallbackScriptIDs:[S

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$1500([S)S

    move-result v1

    const/16 v5, 0xf

    aput-short v1, v0, v5

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->appendedfontpath:Ljava/lang/String;

    invoke-static {v1}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result v1

    const/16 v5, 0x10

    aput-short v1, v0, v5

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->version:Ljava/lang/String;

    invoke-static {p0}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result p0

    const/16 v1, 0x11

    aput-short p0, v0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object p0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    aget-short v0, v0, v3

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1400()[S

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0xc

    aput-short v0, p0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1700()S

    move-result p0

    add-int/2addr p0, v4

    new-array p0, p0, [S

    invoke-static {p0}, Lsun/awt/FontConfiguration;->access$1602([S)[S

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1800()[S

    move-result-object p0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1600()[S

    move-result-object v0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1700()S

    move-result v3

    add-int/2addr v3, v4

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object p0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    aget-short v0, v0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1700()S

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    int-to-short v0, v0

    const/16 v1, 0xd

    aput-short v0, p0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$2000()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0}, Lsun/awt/FontConfiguration;->access$1902([C)[C

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object p0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$000()[S

    move-result-object v0

    aget-short v0, v0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$2000()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0xe

    aput-short v0, p0, v1

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1600()[S

    move-result-object p0

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {p0}, Lsun/awt/FontConfiguration;->access$2102([Ljava/lang/String;)[Ljava/lang/String;

    return-void
.end method

.method private initHashMaps()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->elcIDs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontfileNameIDs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->filenames:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->sequences:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFonts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfonts:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->exclusions:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->awtfontpaths:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->proportionals:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfontsMotif:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->alphabeticSuffix:Ljava/util/HashMap;

    invoke-static {}, Lsun/awt/FontConfiguration;->access$1300()[S

    move-result-object v0

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fallbackScriptIDs:[S

    return-void
.end method

.method private initLogicalNameStyle()V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "serif"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "sansserif"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "monospaced"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dialog"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "dialoginput"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    const-string v5, "plain"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    const-string v1, "bold"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    const-string v1, "italic"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    const-string v0, "bolditalic"

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseExclusions(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11

    if-nez p2, :cond_0

    invoke-static {}, Lsun/awt/FontConfiguration;->access$2200()[I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    const/4 v0, 0x1

    move v1, p0

    :goto_0
    const/16 v2, 0x2c

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    move v4, p0

    :goto_1
    if-ge p0, v0, :cond_8

    const/16 v5, 0x2d

    :try_start_0
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    :cond_2
    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x6

    const/4 v10, 0x4

    if-eq v7, v10, :cond_3

    if-ne v7, v9, :cond_4

    :cond_3
    if-eq v8, v10, :cond_5

    if-ne v8, v9, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    :cond_5
    :goto_2
    const/16 v7, 0x10

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v4, v5, :cond_6

    add-int/lit8 v7, p0, 0x1

    aput v4, v1, p0

    add-int/lit8 p0, v7, 0x1

    aput v5, v1, v7

    move v4, v6

    goto :goto_1

    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {}, Lsun/font/FontUtilities;->debugFonts()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed parsing "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " property of font configuration."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lsun/awt/FontConfiguration;->access$2200()[I

    move-result-object p0

    return-object p0

    :cond_8
    return-object v1
.end method

.method private parseProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "filename."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x5f

    const/16 v3, 0x9

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MingLiU_HKSCS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontfileNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v0, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p2

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->filenames:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1
    const-string v0, "exclusion."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->exclusions:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->parseExclusions(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_2
    const-string v0, "sequence."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, -0x1

    const/16 v5, 0x2e

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lsun/awt/FontConfiguration;->access$2500(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p2

    invoke-static {}, Lsun/awt/FontConfiguration;->access$2400()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    array-length v0, p2

    new-array v0, v0, [S

    move v1, v7

    move v2, v1

    move v3, v2

    :goto_0
    array-length v8, p2

    if-ge v1, v8, :cond_5

    const-string v8, "alphabetic/default"

    aget-object v9, p2, v1

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "alphabetic"

    if-eqz v8, :cond_3

    aput-object v9, p2, v1

    move v2, v6

    goto :goto_1

    :cond_3
    const-string v8, "alphabetic/1252"

    aget-object v10, p2, v1

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aput-object v9, p2, v1

    move v3, v6

    :cond_4
    :goto_1
    iget-object v8, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    aget-object v9, p2, v1

    invoke-direct {p0, v8, v9}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Short;->shortValue()S

    move-result v8

    aput-short v8, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lsun/awt/FontConfiguration;->access$1500([S)S

    move-result p2

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v5, "allfonts"

    if-ne v1, v4, :cond_9

    const-string v1, "fallback"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fallbackScriptIDs:[S

    return-void

    :cond_6
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->elcIDs:Ljava/util/HashMap;

    const-string v1, "NULL.NULL.NULL"

    invoke-direct {p0, v0, v1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error sequence def: <sequence."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ">"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->elcIDs:Ljava/util/HashMap;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-array p1, v6, [S

    aput-short p2, p1, v7

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->sequences:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    if-nez v1, :cond_b

    const/4 v1, 0x5

    new-array v1, v1, [S

    :cond_b
    iget-object v4, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_d

    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognizable logicfont name "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-short p2, v1, p1

    move-object p1, v1

    :goto_3
    iget-object p2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->sequences:Ljava/util/HashMap;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_e

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->alphabeticSuffix:Ljava/util/HashMap;

    const-string p1, "default"

    invoke-static {p1}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_e
    if-eqz v3, :cond_1f

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->alphabeticSuffix:Ljava/util/HashMap;

    const-string p1, "1252"

    invoke-static {p1}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_f
    const-string v0, "allfonts."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v8, ".motif"

    if-eqz v0, :cond_11

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfontsMotif:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_10
    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptAllfonts:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    const-string v0, "awtfontpath."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->awtfontpaths:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    invoke-static {p2}, Lsun/awt/FontConfiguration;->access$1000(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_12
    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object p2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->version:Ljava/lang/String;

    goto/16 :goto_6

    :cond_13
    const-string v0, "appendedfontpath"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object p2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->appendedfontpath:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    const-string v0, "proportional."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->proportionals:Ljava/util/HashMap;

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p1}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    iget-object v1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v1, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_15
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, " property of font configuration."

    const-string v2, "Failed parsing "

    if-ne v0, v4, :cond_17

    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_16

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_16
    return-void

    :cond_17
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ne v5, v4, :cond_19

    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_18

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_18
    return-void

    :cond_19
    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    move v1, v6

    goto :goto_4

    :cond_1a
    move v1, v7

    :goto_4
    iget-object v2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->logicalFontIDs:Ljava/util/HashMap;

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->fontStyleIDs:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptIDs:Ljava/util/HashMap;

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    if-eqz v0, :cond_20

    if-nez v2, :cond_1b

    goto :goto_7

    :cond_1b
    if-eqz v1, :cond_1c

    iget-object p1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Short;

    goto :goto_5

    :cond_1c
    iget-object p1, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFonts:Ljava/util/HashMap;

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Short;

    :goto_5
    if-nez p1, :cond_1d

    const/16 p1, 0x14

    new-array p1, p1, [Ljava/lang/Short;

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->componentFontNameIDs:Ljava/util/HashMap;

    invoke-direct {p0, v2, p2}, Lsun/awt/FontConfiguration$PropertiesHandler;->getID(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, p1, v0

    if-eqz v1, :cond_1e

    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFontsMotif:Ljava/util/HashMap;

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_1e
    iget-object p0, p0, Lsun/awt/FontConfiguration$PropertiesHandler;->scriptFonts:Ljava/util/HashMap;

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    :goto_6
    return-void

    :cond_20
    :goto_7
    sget-object p0, Lsun/awt/FontConfiguration;->logger:Lsun/util/logging/NeoPlatformLogger;

    if-eqz p0, :cond_21

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unrecognizable logicfont name/style at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsun/util/logging/NeoPlatformLogger;->config(Ljava/lang/String;)V

    :cond_21
    return-void
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/awt/FontConfiguration$PropertiesHandler;->initLogicalNameStyle()V

    invoke-direct {p0}, Lsun/awt/FontConfiguration$PropertiesHandler;->initHashMaps()V

    new-instance v0, Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;

    invoke-direct {v0, p0}, Lsun/awt/FontConfiguration$PropertiesHandler$FontProperties;-><init>(Lsun/awt/FontConfiguration$PropertiesHandler;)V

    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lsun/awt/FontConfiguration$PropertiesHandler;->initBinaryTable()V

    return-void
.end method
