.class Lcom/onyx/harfbuzz/unicode/Unicode;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/onyx/harfbuzz/internal/JniBridge;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getCodePointBidiClass(I)I
.end method

.method public static native getCodePointGeneralCategory(I)I
.end method

.method public static native getCodePointMirror(I)I
.end method

.method public static native getCodePointScript(I)I
.end method

.method public static native getScriptOpenTypeTag(I)I
.end method
