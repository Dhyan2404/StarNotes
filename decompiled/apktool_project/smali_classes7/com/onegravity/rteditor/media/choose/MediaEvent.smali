.class public Lcom/onegravity/rteditor/media/choose/MediaEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/rteditor/api/media/RTMedia;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/api/media/RTMedia;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onegravity/rteditor/media/choose/MediaEvent;->a:Lcom/onegravity/rteditor/api/media/RTMedia;

    return-void
.end method


# virtual methods
.method public getMedia()Lcom/onegravity/rteditor/api/media/RTMedia;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/media/choose/MediaEvent;->a:Lcom/onegravity/rteditor/api/media/RTMedia;

    return-object p0
.end method
