.class public Lnet/sf/saxon/type/AlphaCode$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/type/AlphaCode$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/type/AlphaCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/sf/saxon/type/AlphaCode$e<",
        "Lnet/sf/saxon/ma/map/DictionaryMap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/sf/saxon/type/AlphaCode$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/sf/saxon/type/AlphaCode$d;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$d;->g(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/ma/map/DictionaryMap;

    check-cast p3, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$d;->j(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Lnet/sf/saxon/ma/map/DictionaryMap;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$d;->h(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    check-cast p1, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/type/AlphaCode$d;->i(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic e()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/AlphaCode$d;->f()Lnet/sf/saxon/ma/map/DictionaryMap;

    move-result-object p0

    return-object p0
.end method

.method public f()Lnet/sf/saxon/ma/map/DictionaryMap;
    .locals 0

    new-instance p0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    return-object p0
.end method

.method public g(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/map/DictionaryMap;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v1, v0}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p3, Lnet/sf/saxon/value/SequenceExtent$Of;

    invoke-direct {p3, p0}, Lnet/sf/saxon/value/SequenceExtent$Of;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public h(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/map/DictionaryMap;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/ma/map/DictionaryMap;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p3, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {p3, p0}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public i(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, p3}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public j(Lnet/sf/saxon/ma/map/DictionaryMap;Ljava/lang/String;Lnet/sf/saxon/ma/map/DictionaryMap;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method
