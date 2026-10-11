package com.sunia.calculatorv2.ink.graphics;

import android.graphics.Path;
import com.sunia.HTREnginev2.C14376s1;
import java.util.List;

/* loaded from: classes10.dex */
public interface ITrace {
    BoundBox getBoundBox();

    long getId();

    Path getPath();

    List<C14376s1> getPoints();
}
