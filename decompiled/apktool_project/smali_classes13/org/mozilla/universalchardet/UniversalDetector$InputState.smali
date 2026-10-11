.class public final enum Lorg/mozilla/universalchardet/UniversalDetector$InputState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/UniversalDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/universalchardet/UniversalDetector$InputState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field public static final enum PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v1, "PURE_ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v2, "ESC_ASCII"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    new-instance v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const-string v3, "HIGHBYTE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/universalchardet/UniversalDetector$InputState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    filled-new-array {v0, v1, v2}, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    move-result-object v0

    sput-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->$VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    .locals 1

    const-class v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    .locals 1

    sget-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->$VALUES:[Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    invoke-virtual {v0}, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    return-object v0
.end method
