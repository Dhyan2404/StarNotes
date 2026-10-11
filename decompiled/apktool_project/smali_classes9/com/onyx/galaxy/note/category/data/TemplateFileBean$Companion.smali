.class public final Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/data/TemplateFileBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTemplateFileBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n1855#2,2:42\n*S KotlinDebug\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n*L\n35#1:42,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bJ\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;",
        "",
        "()V",
        "createTemplateFileBean",
        "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
        "uri",
        "Landroid/net/Uri;",
        "pageIndexList",
        "",
        "",
        "password",
        "",
        "createTemplateFileBeanList",
        "uris",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTemplateFileBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n1855#2,2:42\n*S KotlinDebug\n*F\n+ 1 TemplateFileBean.kt\ncom/onyx/galaxy/note/category/data/TemplateFileBean$Companion\n*L\n35#1:42,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createTemplateFileBean$default(Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createTemplateFileBean(Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pageIndexList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "password"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->setPageIndexList(Ljava/util/List;)V

    invoke-virtual {p0, p3}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->setPassword(Ljava/lang/String;)V

    return-object p0
.end method

.method public final createTemplateFileBeanList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/TemplateFileBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "uris"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean$default(Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method
