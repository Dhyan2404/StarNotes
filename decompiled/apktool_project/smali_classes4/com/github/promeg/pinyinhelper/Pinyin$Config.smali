.class public final Lcom/github/promeg/pinyinhelper/Pinyin$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/promeg/pinyinhelper/Pinyin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public a:Lcom/sunia/HTREnginev2/tdm;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b:Ljava/util/List;

    .line 4
    :cond_0
    new-instance p1, Lcom/sunia/HTREnginev2/xtg;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/xtg;-><init>()V

    iput-object p1, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->a:Lcom/sunia/HTREnginev2/tdm;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/github/promeg/pinyinhelper/Pinyin$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b:Ljava/util/List;

    return-object p0
.end method

.method public b()Lcom/sunia/HTREnginev2/tdm;
    .locals 0

    iget-object p0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->a:Lcom/sunia/HTREnginev2/tdm;

    return-object p0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b()Lcom/sunia/HTREnginev2/tdm;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public with(Lcom/github/promeg/pinyinhelper/PinyinDict;)Lcom/github/promeg/pinyinhelper/Pinyin$Config;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/promeg/pinyinhelper/Pinyin$Config;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method
