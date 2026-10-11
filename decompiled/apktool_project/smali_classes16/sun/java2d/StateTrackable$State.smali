.class public final enum Lsun/java2d/StateTrackable$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/StateTrackable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/java2d/StateTrackable$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/java2d/StateTrackable$State;

.field public static final enum DYNAMIC:Lsun/java2d/StateTrackable$State;

.field public static final enum IMMUTABLE:Lsun/java2d/StateTrackable$State;

.field public static final enum STABLE:Lsun/java2d/StateTrackable$State;

.field public static final enum UNTRACKABLE:Lsun/java2d/StateTrackable$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lsun/java2d/StateTrackable$State;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/java2d/StateTrackable$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/java2d/StateTrackable$State;->IMMUTABLE:Lsun/java2d/StateTrackable$State;

    new-instance v1, Lsun/java2d/StateTrackable$State;

    const-string v2, "STABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/java2d/StateTrackable$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/java2d/StateTrackable$State;->STABLE:Lsun/java2d/StateTrackable$State;

    new-instance v2, Lsun/java2d/StateTrackable$State;

    const-string v3, "DYNAMIC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lsun/java2d/StateTrackable$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun/java2d/StateTrackable$State;->DYNAMIC:Lsun/java2d/StateTrackable$State;

    new-instance v3, Lsun/java2d/StateTrackable$State;

    const-string v4, "UNTRACKABLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lsun/java2d/StateTrackable$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lsun/java2d/StateTrackable$State;->UNTRACKABLE:Lsun/java2d/StateTrackable$State;

    filled-new-array {v0, v1, v2, v3}, [Lsun/java2d/StateTrackable$State;

    move-result-object v0

    sput-object v0, Lsun/java2d/StateTrackable$State;->$VALUES:[Lsun/java2d/StateTrackable$State;

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

.method public static valueOf(Ljava/lang/String;)Lsun/java2d/StateTrackable$State;
    .locals 1

    const-class v0, Lsun/java2d/StateTrackable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/java2d/StateTrackable$State;

    return-object p0
.end method

.method public static values()[Lsun/java2d/StateTrackable$State;
    .locals 1

    sget-object v0, Lsun/java2d/StateTrackable$State;->$VALUES:[Lsun/java2d/StateTrackable$State;

    invoke-virtual {v0}, [Lsun/java2d/StateTrackable$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/java2d/StateTrackable$State;

    return-object v0
.end method
