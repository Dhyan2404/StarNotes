.class public final enum Lorg/apache/commons/math3/ode/events/EventHandler$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/ode/events/EventHandler$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v1, "STOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    new-instance v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v2, "RESET_STATE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    new-instance v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v3, "RESET_DERIVATIVES"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    new-instance v3, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v4, "CONTINUE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    filled-new-array {v0, v1, v2, v3}, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->$VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->$VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-object v0
.end method
