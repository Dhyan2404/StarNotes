.class public final Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;,
        Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000cR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;",
        "",
        "()V",
        "cosConvertor",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;",
        "ossConvertor",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;",
        "ensureDocConvert",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;",
        "type",
        "Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;",
        "initConvertor",
        "",
        "clusterInfo",
        "Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;",
        "releaseAll",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final instance:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->Companion:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$Companion;

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->instance:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->instance:Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;

    return-object v0
.end method


# virtual methods
.method public final ensureDocConvert(Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;)Lcom/onyx/android/sdk/data/serverconvert/convertor/IDocConvertor;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/serverconvert/convertor/ConvertType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public final initConvertor(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clusterInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;-><init>(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;-><init>(Lcom/onyx/android/sdk/data/cluster/model/ClusterInfo;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    :cond_1
    return-void
.end method

.method public final releaseAll()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;->release()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->cosConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/TencentDocConvertor;

    iput-object v0, p0, Lcom/onyx/android/sdk/data/serverconvert/convertor/DocConvertFactory;->ossConvertor:Lcom/onyx/android/sdk/data/serverconvert/convertor/AliDocConvertor;

    return-void
.end method
