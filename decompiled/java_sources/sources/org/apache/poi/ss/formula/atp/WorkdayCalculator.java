package org.apache.poi.ss.formula.atp;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.util.LocaleUtil;

/* loaded from: classes13.dex */
public class WorkdayCalculator {
    private static final Set<Integer> friSatWeekend;
    private static final Set<Integer> friWeekend;
    public static final WorkdayCalculator instance = new WorkdayCalculator();
    private static final Set<Integer> monTuesWeekend;
    private static final Set<Integer> monWeekend;
    private static final Set<Integer> satWeekend;
    private static final Set<Integer> standardWeekend;
    private static final Set<Integer> sunMonWeekend;
    private static final Set<Integer> sunWeekend;
    private static final Set<Integer> thursFriWeekend;
    private static final Set<Integer> thursWeekend;
    private static final Set<Integer> tuesWedsWeekend;
    private static final Set<Integer> tuesWeekend;
    private static final Set<Integer> wedsThursWeekend;
    private static final Set<Integer> wedsWeekend;
    private static final Map<Integer, Set<Integer>> weekendTypeMap;

    static {
        HashSet hashSet = new HashSet(Arrays.asList(7, 1));
        standardWeekend = hashSet;
        HashSet hashSet2 = new HashSet(Arrays.asList(1, 2));
        sunMonWeekend = hashSet2;
        HashSet hashSet3 = new HashSet(Arrays.asList(2, 3));
        monTuesWeekend = hashSet3;
        HashSet hashSet4 = new HashSet(Arrays.asList(3, 4));
        tuesWedsWeekend = hashSet4;
        HashSet hashSet5 = new HashSet(Arrays.asList(4, 5));
        wedsThursWeekend = hashSet5;
        HashSet hashSet6 = new HashSet(Arrays.asList(5, 6));
        thursFriWeekend = hashSet6;
        HashSet hashSet7 = new HashSet(Arrays.asList(6, 7));
        friSatWeekend = hashSet7;
        Set<Integer> singleton = Collections.singleton(2);
        monWeekend = singleton;
        Set<Integer> singleton2 = Collections.singleton(3);
        tuesWeekend = singleton2;
        Set<Integer> singleton3 = Collections.singleton(4);
        wedsWeekend = singleton3;
        Set<Integer> singleton4 = Collections.singleton(5);
        thursWeekend = singleton4;
        Set<Integer> singleton5 = Collections.singleton(6);
        friWeekend = singleton5;
        Set<Integer> singleton6 = Collections.singleton(7);
        satWeekend = singleton6;
        Set<Integer> singleton7 = Collections.singleton(1);
        sunWeekend = singleton7;
        HashMap hashMap = new HashMap();
        weekendTypeMap = hashMap;
        hashMap.put(1, hashSet);
        hashMap.put(2, hashSet2);
        hashMap.put(3, hashSet3);
        hashMap.put(4, hashSet4);
        hashMap.put(5, hashSet5);
        hashMap.put(6, hashSet6);
        hashMap.put(7, hashSet7);
        hashMap.put(11, singleton7);
        hashMap.put(12, singleton);
        hashMap.put(13, singleton2);
        hashMap.put(14, singleton3);
        hashMap.put(15, singleton4);
        hashMap.put(16, singleton5);
        hashMap.put(17, singleton6);
    }

    private WorkdayCalculator() {
    }

    public int calculateNonWeekendHolidays(double d, double d2, double[] dArr) {
        double[] dArr2 = dArr;
        double min = Math.min(d, d2);
        double max = Math.max(d2, d);
        int length = dArr2.length;
        int i = 0;
        int i2 = 0;
        while (i2 < length) {
            double d3 = dArr2[i2];
            int i3 = i;
            int i4 = length;
            int i5 = i2;
            if (isInARange(min, max, d3) && !isWeekend(d3)) {
                i = i3 + 1;
                i2 = i5 + 1;
                dArr2 = dArr;
                length = i4;
            }
            i = i3;
            i2 = i5 + 1;
            dArr2 = dArr;
            length = i4;
        }
        int i6 = i;
        return d <= d2 ? i6 : -i6;
    }

    public int calculateWorkdays(double d, double d2, double[] dArr) {
        Set<Integer> set = standardWeekend;
        Integer[] numArr = (Integer[]) set.toArray(new Integer[set.size()]);
        int pastDaysOfWeek = numArr.length == 0 ? 0 : pastDaysOfWeek(d, d2, numArr[0].intValue());
        return ((((int) ((d2 - d) + 1.0d)) - pastDaysOfWeek) - (numArr.length > 1 ? pastDaysOfWeek(d, d2, numArr[1].intValue()) : 0)) - calculateNonWeekendHolidays(d, d2, dArr);
    }

    public Set<Integer> getValidWeekendTypes() {
        return weekendTypeMap.keySet();
    }

    public boolean isHoliday(double d, double[] dArr) {
        for (double d2 : dArr) {
            if (Math.round(d2) == Math.round(d)) {
                return true;
            }
        }
        return false;
    }

    public boolean isInARange(double d, double d2, double d3) {
        return d3 >= d && d3 <= d2;
    }

    public boolean isWeekend(double d) {
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.setTime(DateUtil.getJavaDate(d));
        return isWeekend(localeCalendar);
    }

    public int pastDaysOfWeek(double d, double d2, int i) {
        int floor = (int) Math.floor(Math.max(d2, d));
        int i2 = 0;
        for (int floor2 = (int) Math.floor(Math.min(d, d2)); floor2 <= floor; floor2++) {
            Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
            localeCalendar.setTime(DateUtil.getJavaDate(floor2));
            if (localeCalendar.get(7) == i) {
                i2++;
            }
        }
        return d <= d2 ? i2 : -i2;
    }

    private boolean isWeekend(Calendar calendar) {
        return isWeekend(calendar, standardWeekend);
    }

    private boolean isWeekend(Calendar calendar, Set<Integer> set) {
        return set.contains(Integer.valueOf(calendar.get(7)));
    }

    public Date calculateWorkdays(double d, int i, double[] dArr) {
        return calculateWorkdays(d, i, 1, dArr);
    }

    public Date calculateWorkdays(double d, int i, int i2, double[] dArr) {
        Set<Integer> orDefault = weekendTypeMap.getOrDefault(Integer.valueOf(i2), standardWeekend);
        Date javaDate = DateUtil.getJavaDate(d);
        int i3 = i < 0 ? -1 : 1;
        Calendar localeCalendar = LocaleUtil.getLocaleCalendar();
        localeCalendar.setTime(javaDate);
        double excelDate = DateUtil.getExcelDate(localeCalendar.getTime());
        while (i != 0) {
            localeCalendar.add(6, i3);
            excelDate += i3;
            if (!isWeekend(localeCalendar, orDefault) && !isHoliday(excelDate, dArr)) {
                i -= i3;
            }
        }
        return localeCalendar.getTime();
    }
}
