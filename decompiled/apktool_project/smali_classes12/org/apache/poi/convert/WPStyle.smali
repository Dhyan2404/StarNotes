.class public Lorg/apache/poi/convert/WPStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private custom:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "style.css"

    .line 2
    iput-object v0, p0, Lorg/apache/poi/convert/WPStyle;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/poi/convert/WPStyle;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAllData()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/convert/WPStyle;->data:Ljava/lang/String;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/convert/WPStyle;->custom:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPStyle;->custom:Ljava/lang/String;

    return-object p0
.end method

.method public getData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPStyle;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/convert/WPStyle;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPStyle;->custom:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPStyle;->data:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/convert/WPStyle;->name:Ljava/lang/String;

    return-void
.end method
