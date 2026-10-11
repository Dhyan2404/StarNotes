.class public final synthetic Lcom/sunia/HTREnginev2/dlk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/PPTFactory$Creator;


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dlk;->a:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    return-void
.end method


# virtual methods
.method public final create()Ljava/awt/Graphics2D;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dlk;->a:Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;

    invoke-static {p0}, Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;->a(Lcom/onyx/android/sdk/reader/plugins/ppt/PPTReaderWrapper;)Ljava/awt/Graphics2D;

    move-result-object p0

    return-object p0
.end method
