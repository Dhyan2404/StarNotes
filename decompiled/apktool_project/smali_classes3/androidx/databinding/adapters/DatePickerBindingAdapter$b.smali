.class public Landroidx/databinding/adapters/DatePickerBindingAdapter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/adapters/DatePickerBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public e:Landroid/widget/DatePicker$OnDateChangedListener;

.field public f:Landroidx/databinding/InverseBindingListener;

.field public g:Landroidx/databinding/InverseBindingListener;

.field public h:Landroidx/databinding/InverseBindingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/databinding/adapters/DatePickerBindingAdapter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/DatePicker$OnDateChangedListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/InverseBindingListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->e:Landroid/widget/DatePicker$OnDateChangedListener;

    iput-object p2, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->f:Landroidx/databinding/InverseBindingListener;

    iput-object p3, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->g:Landroidx/databinding/InverseBindingListener;

    iput-object p4, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->h:Landroidx/databinding/InverseBindingListener;

    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1

    iget-object v0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->e:Landroid/widget/DatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$OnDateChangedListener;->onDateChanged(Landroid/widget/DatePicker;III)V

    :cond_0
    iget-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->f:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_1
    iget-object p1, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->g:Landroidx/databinding/InverseBindingListener;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_2
    iget-object p0, p0, Landroidx/databinding/adapters/DatePickerBindingAdapter$b;->h:Landroidx/databinding/InverseBindingListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroidx/databinding/InverseBindingListener;->onChange()V

    :cond_3
    return-void
.end method
