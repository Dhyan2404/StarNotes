.class public Lcom/onyx/android/sdk/neopdf/PdfTextState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RENDERING_MODE_FILL:I = 0x0

.field public static final RENDERING_MODE_FILL_AND_STROKE:I = 0x2

.field public static final RENDERING_MODE_INVISIBLE:I = 0x3

.field public static final RENDERING_MODE_STROKE:I = 0x1


# instance fields
.field public characterSpacing:F

.field public renderingMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextState;->characterSpacing:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/onyx/android/sdk/neopdf/PdfTextState;->renderingMode:I

    return-void
.end method
