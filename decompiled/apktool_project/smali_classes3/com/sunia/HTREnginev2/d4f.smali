.class public final synthetic Lcom/sunia/HTREnginev2/d4f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroidx/profileinstaller/DeviceProfileWriter;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/d4f;->e:Landroidx/profileinstaller/DeviceProfileWriter;

    iput p2, p0, Lcom/sunia/HTREnginev2/d4f;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/d4f;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/d4f;->e:Landroidx/profileinstaller/DeviceProfileWriter;

    iget v1, p0, Lcom/sunia/HTREnginev2/d4f;->f:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/d4f;->g:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Landroidx/profileinstaller/DeviceProfileWriter;->a(Landroidx/profileinstaller/DeviceProfileWriter;ILjava/lang/Object;)V

    return-void
.end method
