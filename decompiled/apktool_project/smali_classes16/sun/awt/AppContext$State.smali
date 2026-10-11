.class final enum Lsun/awt/AppContext$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/awt/AppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lsun/awt/AppContext$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/awt/AppContext$State;

.field public static final enum BEING_DISPOSED:Lsun/awt/AppContext$State;

.field public static final enum DISPOSED:Lsun/awt/AppContext$State;

.field public static final enum VALID:Lsun/awt/AppContext$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lsun/awt/AppContext$State;

    const-string v1, "VALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lsun/awt/AppContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lsun/awt/AppContext$State;->VALID:Lsun/awt/AppContext$State;

    new-instance v1, Lsun/awt/AppContext$State;

    const-string v2, "BEING_DISPOSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lsun/awt/AppContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lsun/awt/AppContext$State;->BEING_DISPOSED:Lsun/awt/AppContext$State;

    new-instance v2, Lsun/awt/AppContext$State;

    const-string v3, "DISPOSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lsun/awt/AppContext$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lsun/awt/AppContext$State;->DISPOSED:Lsun/awt/AppContext$State;

    filled-new-array {v0, v1, v2}, [Lsun/awt/AppContext$State;

    move-result-object v0

    sput-object v0, Lsun/awt/AppContext$State;->$VALUES:[Lsun/awt/AppContext$State;

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

.method public static valueOf(Ljava/lang/String;)Lsun/awt/AppContext$State;
    .locals 1

    const-class v0, Lsun/awt/AppContext$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lsun/awt/AppContext$State;

    return-object p0
.end method

.method public static values()[Lsun/awt/AppContext$State;
    .locals 1

    sget-object v0, Lsun/awt/AppContext$State;->$VALUES:[Lsun/awt/AppContext$State;

    invoke-virtual {v0}, [Lsun/awt/AppContext$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lsun/awt/AppContext$State;

    return-object v0
.end method
