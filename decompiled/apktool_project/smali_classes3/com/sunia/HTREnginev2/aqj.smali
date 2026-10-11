.class public final synthetic Lcom/sunia/HTREnginev2/aqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/room/MultiInstanceInvalidationClient;

.field public final synthetic f:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/aqj;->e:Landroidx/room/MultiInstanceInvalidationClient;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/aqj;->f:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/aqj;->e:Landroidx/room/MultiInstanceInvalidationClient;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/aqj;->f:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->a(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    return-void
.end method
