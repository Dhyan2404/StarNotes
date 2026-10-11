.class public final synthetic Lcom/sunia/HTREnginev2/a0g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic a:Lcom/sunia/HTREnginev2/o4l;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/o4l;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/a0g;->a:Lcom/sunia/HTREnginev2/o4l;

    iput p2, p0, Lcom/sunia/HTREnginev2/a0g;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/a0g;->a:Lcom/sunia/HTREnginev2/o4l;

    iget p0, p0, Lcom/sunia/HTREnginev2/a0g;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/a;->E(Lcom/sunia/HTREnginev2/o4l;ILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
