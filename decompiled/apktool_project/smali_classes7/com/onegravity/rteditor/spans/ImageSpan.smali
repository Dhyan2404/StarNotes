.class public Lcom/onegravity/rteditor/spans/ImageSpan;
.super Lcom/onegravity/rteditor/spans/MediaSpan;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/media/RTImage;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/onegravity/rteditor/spans/MediaSpan;-><init>(Lcom/onegravity/rteditor/api/media/RTMedia;Z)V

    return-void
.end method


# virtual methods
.method public getImage()Lcom/onegravity/rteditor/api/media/RTImage;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/spans/MediaSpan;->mMedia:Lcom/onegravity/rteditor/api/media/RTMedia;

    check-cast p0, Lcom/onegravity/rteditor/api/media/RTImage;

    return-object p0
.end method
