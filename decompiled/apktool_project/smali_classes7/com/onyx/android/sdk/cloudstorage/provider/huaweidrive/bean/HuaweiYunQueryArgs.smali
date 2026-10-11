.class public final Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0018\u0000 !2\u00020\u0001:\u0001!B\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002R$\u0010\n\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u0005\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\u0005\u001a\u0004\u0008\u0010\u0010\u0007\"\u0004\u0008\u0011\u0010\tR\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u0005\u001a\u0004\u0008\u001c\u0010\u0007\"\u0004\u0008\u001d\u0010\t\u00a8\u0006\""
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;",
        "",
        "",
        "queryCondition",
        "a",
        "Ljava/lang/String;",
        "getQueryParam",
        "()Ljava/lang/String;",
        "setQueryParam",
        "(Ljava/lang/String;)V",
        "queryParam",
        "b",
        "getOrderBy",
        "setOrderBy",
        "orderBy",
        "c",
        "getCursor",
        "setCursor",
        "cursor",
        "",
        "d",
        "I",
        "getPageSize",
        "()I",
        "setPageSize",
        "(I)V",
        "pageSize",
        "e",
        "getParentFileId",
        "setParentFileId",
        "parentFileId",
        "<init>",
        "()V",
        "Companion",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final CREATED_TIME:Ljava/lang/String; = "createdTime"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EDITED_TIME:Ljava/lang/String; = "editedTime"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FILE_NAME:Ljava/lang/String; = "fileName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_PARENT_FOLDER:Ljava/lang/String; = "parentFolder"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final QUERY_PARENT_MIMETYPE:Ljava/lang/String; = "mimeType"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SIZE:Ljava/lang/String; = "size"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SORT_ORDER_DESC:Ljava/lang/String; = "desc,"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->Companion:Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->d:I

    const-string v0, "root"

    iput-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->e:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$andQuery(Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCursor()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderBy()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getPageSize()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->d:I

    return p0
.end method

.method public final getParentFileId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getQueryParam()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setCursor(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->c:Ljava/lang/String;

    return-void
.end method

.method public final setOrderBy(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->b:Ljava/lang/String;

    return-void
.end method

.method public final setPageSize(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->d:I

    return-void
.end method

.method public final setParentFileId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->e:Ljava/lang/String;

    return-void
.end method

.method public final setQueryParam(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/bean/HuaweiYunQueryArgs;->a:Ljava/lang/String;

    return-void
.end method
