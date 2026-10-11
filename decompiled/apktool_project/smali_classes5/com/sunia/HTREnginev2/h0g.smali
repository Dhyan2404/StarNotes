.class public final synthetic Lcom/sunia/HTREnginev2/h0g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/o4l;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/o4l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/h0g;->a:Lcom/sunia/HTREnginev2/o4l;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/h0g;->a:Lcom/sunia/HTREnginev2/o4l;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/a;->e(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
