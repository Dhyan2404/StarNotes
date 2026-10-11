.class public Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static entryArgs:Ljava/util/Vector;

.field protected static entryTypes:Ljava/util/Hashtable;

.field protected static nextEntry:I


# instance fields
.field protected args:Ljava/util/Vector;

.field protected entryType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(ILjava/util/Vector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 19
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_0

    .line 21
    iput p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    .line 22
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :catch_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    .line 7
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    :try_start_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v2, :cond_0

    .line 11
    iput p1, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    .line 12
    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    return-void

    .line 13
    :cond_0
    :try_start_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    :catch_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 15
    :cond_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method

.method public static addEntryType(Ljava/lang/String;I)I
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    sget v2, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->nextEntry:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    sget v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->nextEntry:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    sget p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->nextEntry:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static getEntryArgCount(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryArgs:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 4
    :catch_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method

.method public static getEntryArgCount(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result p0

    return p0
.end method

.method public static getEntryType(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/resolver/CatalogException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryTypes:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 4
    :cond_0
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xml/internal/resolver/CatalogException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public getEntryArg(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryType()I
    .locals 0

    .line 6
    iget p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->entryType:I

    return p0
.end method

.method public setEntryArg(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xml/internal/resolver/CatalogEntry;->args:Ljava/util/Vector;

    invoke-virtual {p0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
