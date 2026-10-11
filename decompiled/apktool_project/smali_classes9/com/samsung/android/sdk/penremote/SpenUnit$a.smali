.class public Lcom/samsung/android/sdk/penremote/SpenUnit$a;
.super Lcom/samsung/android/sdk/penremote/ISpenEventListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/penremote/SpenUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/samsung/android/sdk/penremote/SpenUnit;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/penremote/SpenUnit;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/penremote/SpenUnit$a;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    invoke-direct {p0}, Lcom/samsung/android/sdk/penremote/ISpenEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/samsung/android/sdk/penremote/SpenEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit$a;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    invoke-static {v0}, Lcom/samsung/android/sdk/penremote/SpenUnit;->a(Lcom/samsung/android/sdk/penremote/SpenUnit;)Lcom/samsung/android/sdk/penremote/SpenEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/sdk/penremote/SpenUnit$a;->c:Lcom/samsung/android/sdk/penremote/SpenUnit;

    invoke-static {p0}, Lcom/samsung/android/sdk/penremote/SpenUnit;->a(Lcom/samsung/android/sdk/penremote/SpenUnit;)Lcom/samsung/android/sdk/penremote/SpenEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/sdk/penremote/SpenEventListener;->onEvent(Lcom/samsung/android/sdk/penremote/SpenEvent;)V

    :cond_0
    return-void
.end method
