.class public Lorg/scribe/builder/api/EvernoteApi$Sandbox;
.super Lorg/scribe/builder/api/EvernoteApi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/scribe/builder/api/EvernoteApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sandbox"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/EvernoteApi;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceUrl()Ljava/lang/String;
    .locals 0

    const-string p0, "https://sandbox.evernote.com"

    return-object p0
.end method
