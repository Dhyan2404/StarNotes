.class public final Lcom/onyx/harfbuzz/internal/Raw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INT16_SIZE:I = 0x2

.field public static final INT32_SIZE:I = 0x4

.field public static final INT8_SIZE:I = 0x1

.field public static final POINTER_SIZE:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    invoke-static {}, Lcom/onyx/harfbuzz/internal/Raw;->sizeOfIntPtr()I

    move-result v0

    sput v0, Lcom/onyx/harfbuzz/internal/Raw;->POINTER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native copyInt8Buffer(J[BII)V
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native copyUInt8Buffer(J[III)V
    .param p2    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public static native getInt16Value(J)S
.end method

.method public static native getInt32Value(J)I
.end method

.method public static native getInt8Value(J)B
.end method

.method public static native getIntPtrValue(J)J
.end method

.method private static native sizeOfIntPtr()I
.end method
