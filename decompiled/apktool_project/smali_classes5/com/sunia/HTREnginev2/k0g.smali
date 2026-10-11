.class public final synthetic Lcom/sunia/HTREnginev2/k0g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/o4l;

.field public final synthetic b:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/k0g;->a:Lcom/sunia/HTREnginev2/o4l;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/k0g;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/k0g;->a:Lcom/sunia/HTREnginev2/o4l;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/k0g;->b:Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/a;->h(Lcom/sunia/HTREnginev2/o4l;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
