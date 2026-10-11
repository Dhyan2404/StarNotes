.class public final Lcom/google/firebase/auth/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

.field public final synthetic f:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Lcom/google/firebase/auth/j;->e:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    iput-object p1, p0, Lcom/google/firebase/auth/j;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/auth/j;->e:Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;

    iget-object p0, p0, Lcom/google/firebase/auth/j;->f:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-interface {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth$AuthStateListener;->onAuthStateChanged(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method
