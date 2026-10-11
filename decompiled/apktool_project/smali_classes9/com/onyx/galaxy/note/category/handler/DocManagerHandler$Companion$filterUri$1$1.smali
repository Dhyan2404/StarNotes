.class final Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1;->a(Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/net/Uri;",
        "invoke",
        "(Landroid/net/Uri;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;->INSTANCE:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lonyx/org/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->import_failed:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, p0, v1, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    .line 5
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-string v0, "filterUri getExtension exception!"

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    const-string p1, ""

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, p0

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler;->Companion:Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion;->getDocumentExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "note"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move p0, v1

    :cond_3
    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/handler/DocManagerHandler$Companion$filterUri$1$1;->invoke(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
