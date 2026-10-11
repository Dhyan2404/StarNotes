.class final Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/base/utils/FontUtils;->f(Ljava/util/List;Lcom/onyx/android/sdk/base/data/font/FontType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "f1",
        "Lcom/onyx/android/sdk/base/data/font/FontInfo;",
        "kotlin.jvm.PlatformType",
        "f2",
        "invoke",
        "(Lcom/onyx/android/sdk/base/data/font/FontInfo;Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/Integer;"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/base/data/font/FontInfo;Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ComparatorUtils;

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/font/FontInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/StringKt;->safelyGetStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v0, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/base/utils/ComparatorUtils;->stringComparator(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/base/data/SortOrder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    check-cast p2, Lcom/onyx/android/sdk/base/data/font/FontInfo;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/FontUtils$fontListGroupAndSort$1;->invoke(Lcom/onyx/android/sdk/base/data/font/FontInfo;Lcom/onyx/android/sdk/base/data/font/FontInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
