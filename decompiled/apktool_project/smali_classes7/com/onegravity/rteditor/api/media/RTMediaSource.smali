.class public Lcom/onegravity/rteditor/api/media/RTMediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/rteditor/api/media/RTMediaType;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/media/RTMediaType;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->a:Lcom/onegravity/rteditor/api/media/RTMediaType;

    iput-object p2, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->b:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->b:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMediaType()Lcom/onegravity/rteditor/api/media/RTMediaType;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->a:Lcom/onegravity/rteditor/api/media/RTMediaType;

    return-object p0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/api/media/RTMediaSource;->c:Ljava/lang/String;

    return-object p0
.end method
