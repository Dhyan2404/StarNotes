.class public Lcom/samsung/android/sdk/penremote/SpenRemote$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/penremote/SpenRemote;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/samsung/android/sdk/penremote/SpenRemote;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/penremote/SpenRemote;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$c;->f:Lcom/samsung/android/sdk/penremote/SpenRemote;

    iput p2, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$c;->f:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {v0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->e(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$c;->f:Lcom/samsung/android/sdk/penremote/SpenRemote;

    invoke-static {v0}, Lcom/samsung/android/sdk/penremote/SpenRemote;->e(Lcom/samsung/android/sdk/penremote/SpenRemote;)Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/sdk/penremote/SpenRemote$c;->e:I

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/penremote/SpenRemote$ConnectionStateChangeListener;->onChange(I)V

    :cond_0
    return-void
.end method
