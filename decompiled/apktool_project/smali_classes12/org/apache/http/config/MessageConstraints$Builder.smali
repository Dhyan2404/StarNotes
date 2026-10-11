.class public Lorg/apache/http/config/MessageConstraints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/config/MessageConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/config/MessageConstraints$Builder;->a:I

    iput v0, p0, Lorg/apache/http/config/MessageConstraints$Builder;->b:I

    return-void
.end method


# virtual methods
.method public build()Lorg/apache/http/config/MessageConstraints;
    .locals 2

    new-instance v0, Lorg/apache/http/config/MessageConstraints;

    iget v1, p0, Lorg/apache/http/config/MessageConstraints$Builder;->a:I

    iget p0, p0, Lorg/apache/http/config/MessageConstraints$Builder;->b:I

    invoke-direct {v0, v1, p0}, Lorg/apache/http/config/MessageConstraints;-><init>(II)V

    return-object v0
.end method

.method public setMaxHeaderCount(I)Lorg/apache/http/config/MessageConstraints$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/MessageConstraints$Builder;->b:I

    return-object p0
.end method

.method public setMaxLineLength(I)Lorg/apache/http/config/MessageConstraints$Builder;
    .locals 0

    iput p1, p0, Lorg/apache/http/config/MessageConstraints$Builder;->a:I

    return-object p0
.end method
