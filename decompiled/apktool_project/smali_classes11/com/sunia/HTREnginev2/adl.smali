.class public final synthetic Lcom/sunia/HTREnginev2/adl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lonyx/org/apache/commons/io/input/ReadAheadInputStream;

.field public final synthetic f:[B


# direct methods
.method public synthetic constructor <init>(Lonyx/org/apache/commons/io/input/ReadAheadInputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/adl;->e:Lonyx/org/apache/commons/io/input/ReadAheadInputStream;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/adl;->f:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/adl;->e:Lonyx/org/apache/commons/io/input/ReadAheadInputStream;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/adl;->f:[B

    invoke-static {v0, p0}, Lonyx/org/apache/commons/io/input/ReadAheadInputStream;->f(Lonyx/org/apache/commons/io/input/ReadAheadInputStream;[B)V

    return-void
.end method
