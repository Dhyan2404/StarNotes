.class abstract enum Lorg/apache/commons/math3/ode/events/Transformer;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/math3/ode/events/Transformer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MAX:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MIN:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$1;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/events/Transformer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    new-instance v1, Lorg/apache/commons/math3/ode/events/Transformer$2;

    const-string v3, "PLUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/ode/events/Transformer$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    new-instance v3, Lorg/apache/commons/math3/ode/events/Transformer$3;

    const-string v5, "MINUS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/math3/ode/events/Transformer$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    new-instance v5, Lorg/apache/commons/math3/ode/events/Transformer$4;

    const-string v7, "MIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/ode/events/Transformer$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    new-instance v7, Lorg/apache/commons/math3/ode/events/Transformer$5;

    const-string v9, "MAX"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/ode/events/Transformer$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lorg/apache/commons/math3/ode/events/Transformer;->$VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/Transformer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/events/Transformer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 1

    const-class v0, Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/ode/events/Transformer;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->$VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/events/Transformer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0
.end method


# virtual methods
.method public abstract transformed(D)D
.end method
