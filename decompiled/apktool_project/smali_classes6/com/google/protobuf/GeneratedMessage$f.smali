.class public abstract Lcom/google/protobuf/GeneratedMessage$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public volatile a:Lcom/google/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$f;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/protobuf/Descriptors$FieldDescriptor;
.end method

.method public getDescriptor()Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$f;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessage$f;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage$f;->a()Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessage$f;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessage$f;->a:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method
