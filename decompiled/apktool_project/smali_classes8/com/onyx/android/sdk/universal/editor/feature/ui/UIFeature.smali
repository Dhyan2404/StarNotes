.class public interface abstract Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;,
        Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008f\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\u0007\u001a\u00020\u0005H\u0016J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0008\u0010\u000c\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0005H\u0016J\u0008\u0010\u000e\u001a\u00020\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0008\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0005H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;",
        "",
        "getTemplateType",
        "",
        "limitShapeRectInCurrentPage",
        "",
        "supportAddToOutline",
        "supportClearPage",
        "supportCreatePageLink",
        "supportDrawPageLayer",
        "supportEditPage",
        "supportExportPageAsImage",
        "supportMultiPage",
        "supportPageBackground",
        "supportPageBorder",
        "supportRectExcerptLimitRect",
        "supportRenderPageContentBitmap",
        "supportShapesLocationBar",
        "Companion",
        "sdk-universal_overseasRelease"
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
.field public static final Companion:Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TEMPLATE_TYPE_BOUNDLESS:I = 0x1

.field public static final TEMPLATE_TYPE_NORMAL:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;->a:Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;

    sput-object v0, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->Companion:Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature$Companion;

    return-void
.end method


# virtual methods
.method public abstract getTemplateType()I
.end method

.method public abstract limitShapeRectInCurrentPage()Z
.end method

.method public abstract supportAddToOutline()Z
.end method

.method public abstract supportClearPage()Z
.end method

.method public abstract supportCreatePageLink()Z
.end method

.method public abstract supportDrawPageLayer()Z
.end method

.method public abstract supportEditPage()Z
.end method

.method public abstract supportExportPageAsImage()Z
.end method

.method public abstract supportMultiPage()Z
.end method

.method public abstract supportPageBackground()Z
.end method

.method public abstract supportPageBorder()Z
.end method

.method public abstract supportRectExcerptLimitRect()Z
.end method

.method public abstract supportRenderPageContentBitmap()Z
.end method

.method public abstract supportShapesLocationBar()Z
.end method
