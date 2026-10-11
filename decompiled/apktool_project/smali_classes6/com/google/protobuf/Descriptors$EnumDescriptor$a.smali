.class public Lcom/google/protobuf/Descriptors$EnumDescriptor$a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$EnumDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lcom/google/protobuf/Descriptors$EnumValueDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILcom/google/protobuf/Descriptors$EnumValueDescriptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "descriptor"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iput p1, p0, Lcom/google/protobuf/Descriptors$EnumDescriptor$a;->a:I

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/protobuf/Descriptors$EnumValueDescriptor;Lcom/google/protobuf/Descriptors$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Descriptors$EnumDescriptor$a;-><init>(ILcom/google/protobuf/Descriptors$EnumValueDescriptor;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/protobuf/Descriptors$EnumDescriptor$a;)I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/Descriptors$EnumDescriptor$a;->a:I

    return p0
.end method
