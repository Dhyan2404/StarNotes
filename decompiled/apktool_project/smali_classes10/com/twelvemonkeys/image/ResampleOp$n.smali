.class public Lcom/twelvemonkeys/image/ResampleOp$n;
.super Ljava/awt/RenderingHints$Key;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twelvemonkeys/image/ResampleOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# static fields
.field public static b:I = 0x2710


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/twelvemonkeys/image/ResampleOp$n;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/twelvemonkeys/image/ResampleOp$n;->b:I

    invoke-direct {p0, v0}, Ljava/awt/RenderingHints$Key;-><init>(I)V

    iput-object p1, p0, Lcom/twelvemonkeys/image/ResampleOp$n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isCompatibleValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/twelvemonkeys/image/ResampleOp$t;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/twelvemonkeys/image/ResampleOp$t;

    invoke-virtual {p1, p0}, Lcom/twelvemonkeys/image/ResampleOp$t;->b(Lcom/twelvemonkeys/image/ResampleOp$n;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/image/ResampleOp$n;->a:Ljava/lang/String;

    return-object p0
.end method
