.class final Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/apache/commons/lang3/Range<",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a&\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002 \u0003*\u0012\u0012\u000c\u0012\n \u0003*\u0004\u0018\u00010\u00020\u0002\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lorg/apache/commons/lang3/Range;",
        "",
        "kotlin.jvm.PlatformType",
        "invoke"
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
.field public static final INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/config/ScaleConfig$draftNoteScaleRange$2;->invoke()Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lorg/apache/commons/lang3/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/lang3/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/universal/R$dimen;->draft_note_scale_min_value:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloatValue(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 3
    sget v1, Lcom/onyx/android/sdk/universal/R$dimen;->draft_note_scale_max_value:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getFloatValue(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    .line 4
    invoke-static {v0, p0}, Lorg/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/apache/commons/lang3/Range;

    move-result-object p0

    return-object p0
.end method
