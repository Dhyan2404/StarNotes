.class public final synthetic Lcom/sunia/HTREnginev2/ral;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/room/QueryInterceptorDatabase;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ral;->e:Landroidx/room/QueryInterceptorDatabase;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ral;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ral;->g:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ral;->e:Landroidx/room/QueryInterceptorDatabase;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ral;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ral;->g:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Landroidx/room/QueryInterceptorDatabase;->H(Landroidx/room/QueryInterceptorDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
