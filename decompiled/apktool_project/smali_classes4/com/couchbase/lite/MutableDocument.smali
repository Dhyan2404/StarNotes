.class public final Lcom/couchbase/lite/MutableDocument;
.super Lcom/couchbase/lite/Document;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/MutableDictionaryInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/core/C4Document;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/couchbase/lite/MutableDocument;->createUUID()Ljava/lang/String;

    move-result-object p2

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/couchbase/lite/Document;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/Document;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getC4doc()Lcom/couchbase/lite/internal/core/C4Document;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V

    .line 9
    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/Dictionary;->toMutable()Lcom/couchbase/lite/MutableDictionary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Document;->setContent(Lcom/couchbase/lite/Dictionary;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v0}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/couchbase/lite/Document;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Document;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V

    .line 11
    invoke-virtual {p2}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/Dictionary;->toMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDocument;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, v0, p1, v0}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/couchbase/lite/MutableDocument;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1, v0}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Collection;Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Document;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/couchbase/lite/MutableDocument;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDocument;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/MutableDocument;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static createUUID()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMutableContent()Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/Document;->getContent()Lcom/couchbase/lite/Dictionary;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/Array;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/ArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArrayInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getArray(Ljava/lang/String;)Lcom/couchbase/lite/MutableArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/Dictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/DictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDictionary;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->getDictionary(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/MutableDictionary;->remove(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public bridge synthetic setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Array;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setBlob(Ljava/lang/String;Lcom/couchbase/lite/Blob;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Blob;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/couchbase/lite/MutableDocument;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/MutableDictionary;->setData(Ljava/util/Map;)Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public bridge synthetic setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setDictionary(Ljava/lang/String;Lcom/couchbase/lite/Dictionary;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Dictionary;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableDocument;->setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setDouble(Ljava/lang/String;D)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setFloat(Ljava/lang/String;F)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MutableDocument;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/MutableDictionary;->setJSON(Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public bridge synthetic setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/MutableDocument;->setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setLong(Ljava/lang/String;J)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionaryInterface;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MutableDocument;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/couchbase/lite/MutableDocument;->getMutableContent()Lcom/couchbase/lite/MutableDictionary;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/couchbase/lite/MutableDictionary;->setValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/couchbase/lite/MutableDictionary;

    return-object p0
.end method

.method public toJSON()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Mutable objects may not be encoded as JSON"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toMutable()Lcom/couchbase/lite/MutableDocument;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/MutableDocument;-><init>(Lcom/couchbase/lite/Document;)V

    return-object v0
.end method
