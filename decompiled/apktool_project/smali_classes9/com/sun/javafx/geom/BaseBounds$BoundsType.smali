.class public final enum Lcom/sun/javafx/geom/BaseBounds$BoundsType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/geom/BaseBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BoundsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/javafx/geom/BaseBounds$BoundsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

.field public static final enum BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

.field public static final enum RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/javafx/geom/BaseBounds$BoundsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    new-instance v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    const-string v2, "BOX"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/geom/BaseBounds$BoundsType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->BOX:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    filled-new-array {v0, v1}, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->$VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 1

    const-class v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    return-object p0
.end method

.method public static values()[Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    .locals 1

    sget-object v0, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->$VALUES:[Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    invoke-virtual {v0}, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    return-object v0
.end method
