.class public abstract Lcom/onegravity/rteditor/api/format/RTText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/rteditor/api/format/RTFormat;

.field public final b:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/format/RTFormat;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/api/format/RTText;->a:Lcom/onegravity/rteditor/api/format/RTFormat;

    iput-object p2, p0, Lcom/onegravity/rteditor/api/format/RTText;->b:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public convertTo(Lcom/onegravity/rteditor/api/format/RTFormat;Lcom/onegravity/rteditor/api/RTMediaFactory;)Lcom/onegravity/rteditor/api/format/RTText;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onegravity/rteditor/api/format/RTFormat;",
            "Lcom/onegravity/rteditor/api/RTMediaFactory<",
            "Lcom/onegravity/rteditor/api/media/RTImage;",
            "Lcom/onegravity/rteditor/api/media/RTAudio;",
            "Lcom/onegravity/rteditor/api/media/RTVideo;",
            ">;)",
            "Lcom/onegravity/rteditor/api/format/RTText;"
        }
    .end annotation

    iget-object p2, p0, Lcom/onegravity/rteditor/api/format/RTText;->a:Lcom/onegravity/rteditor/api/format/RTFormat;

    if-ne p1, p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t convert from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTText;->a:Lcom/onegravity/rteditor/api/format/RTFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getFormat()Lcom/onegravity/rteditor/api/format/RTFormat;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTText;->a:Lcom/onegravity/rteditor/api/format/RTFormat;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/format/RTText;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
