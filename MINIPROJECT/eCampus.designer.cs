﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MINIPROJECT
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="e-campus")]
	public partial class eCampusDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Extensibility Method Definitions
    partial void OnCreated();
    partial void Insertyear_semester(year_semester instance);
    partial void Updateyear_semester(year_semester instance);
    partial void Deleteyear_semester(year_semester instance);
    partial void Insertcourse(course instance);
    partial void Updatecourse(course instance);
    partial void Deletecourse(course instance);
    partial void Insertlecturer(lecturer instance);
    partial void Updatelecturer(lecturer instance);
    partial void Deletelecturer(lecturer instance);
    partial void Insertlecturer_course(lecturer_course instance);
    partial void Updatelecturer_course(lecturer_course instance);
    partial void Deletelecturer_course(lecturer_course instance);
    partial void Insertcourse_offered(course_offered instance);
    partial void Updatecourse_offered(course_offered instance);
    partial void Deletecourse_offered(course_offered instance);
    #endregion
		
		public eCampusDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public eCampusDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public eCampusDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public eCampusDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public eCampusDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<year_semester> year_semesters
		{
			get
			{
				return this.GetTable<year_semester>();
			}
		}
		
		public System.Data.Linq.Table<course> courses
		{
			get
			{
				return this.GetTable<course>();
			}
		}
		
		public System.Data.Linq.Table<lecturer> lecturers
		{
			get
			{
				return this.GetTable<lecturer>();
			}
		}
		
		public System.Data.Linq.Table<lecturer_course> lecturer_courses
		{
			get
			{
				return this.GetTable<lecturer_course>();
			}
		}
		
		public System.Data.Linq.Table<course_offered> course_offereds
		{
			get
			{
				return this.GetTable<course_offered>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.year_semester")]
	public partial class year_semester : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _semesterID;
		
		private string _year;
		
		private int _semester;
		
		private EntitySet<course_offered> _course_offereds;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnsemesterIDChanging(int value);
    partial void OnsemesterIDChanged();
    partial void OnyearChanging(string value);
    partial void OnyearChanged();
    partial void OnsemesterChanging(int value);
    partial void OnsemesterChanged();
    #endregion
		
		public year_semester()
		{
			this._course_offereds = new EntitySet<course_offered>(new Action<course_offered>(this.attach_course_offereds), new Action<course_offered>(this.detach_course_offereds));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_semesterID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int semesterID
		{
			get
			{
				return this._semesterID;
			}
			set
			{
				if ((this._semesterID != value))
				{
					this.OnsemesterIDChanging(value);
					this.SendPropertyChanging();
					this._semesterID = value;
					this.SendPropertyChanged("semesterID");
					this.OnsemesterIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_year", DbType="VarChar(10) NOT NULL", CanBeNull=false)]
		public string year
		{
			get
			{
				return this._year;
			}
			set
			{
				if ((this._year != value))
				{
					this.OnyearChanging(value);
					this.SendPropertyChanging();
					this._year = value;
					this.SendPropertyChanged("year");
					this.OnyearChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_semester", DbType="Int NOT NULL")]
		public int semester
		{
			get
			{
				return this._semester;
			}
			set
			{
				if ((this._semester != value))
				{
					this.OnsemesterChanging(value);
					this.SendPropertyChanging();
					this._semester = value;
					this.SendPropertyChanged("semester");
					this.OnsemesterChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="year_semester_course_offered", Storage="_course_offereds", ThisKey="semesterID", OtherKey="semesterID")]
		public EntitySet<course_offered> course_offereds
		{
			get
			{
				return this._course_offereds;
			}
			set
			{
				this._course_offereds.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.year_semester = this;
		}
		
		private void detach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.year_semester = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.course")]
	public partial class course : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private string _courseCode;
		
		private int _courseID;
		
		private string _courseName;
		
		private string _shortForm;
		
		private int _creditHours;
		
		private EntitySet<lecturer_course> _lecturer_courses;
		
		private EntitySet<course_offered> _course_offereds;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OncourseCodeChanging(string value);
    partial void OncourseCodeChanged();
    partial void OncourseIDChanging(int value);
    partial void OncourseIDChanged();
    partial void OncourseNameChanging(string value);
    partial void OncourseNameChanged();
    partial void OnshortFormChanging(string value);
    partial void OnshortFormChanged();
    partial void OncreditHoursChanging(int value);
    partial void OncreditHoursChanged();
    #endregion
		
		public course()
		{
			this._lecturer_courses = new EntitySet<lecturer_course>(new Action<lecturer_course>(this.attach_lecturer_courses), new Action<lecturer_course>(this.detach_lecturer_courses));
			this._course_offereds = new EntitySet<course_offered>(new Action<course_offered>(this.attach_course_offereds), new Action<course_offered>(this.detach_course_offereds));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseCode", DbType="VarChar(5) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
		public string courseCode
		{
			get
			{
				return this._courseCode;
			}
			set
			{
				if ((this._courseCode != value))
				{
					this.OncourseCodeChanging(value);
					this.SendPropertyChanging();
					this._courseCode = value;
					this.SendPropertyChanged("courseCode");
					this.OncourseCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseID", DbType="Int NOT NULL", IsPrimaryKey=true)]
		public int courseID
		{
			get
			{
				return this._courseID;
			}
			set
			{
				if ((this._courseID != value))
				{
					this.OncourseIDChanging(value);
					this.SendPropertyChanging();
					this._courseID = value;
					this.SendPropertyChanged("courseID");
					this.OncourseIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseName", DbType="VarChar(255) NOT NULL", CanBeNull=false)]
		public string courseName
		{
			get
			{
				return this._courseName;
			}
			set
			{
				if ((this._courseName != value))
				{
					this.OncourseNameChanging(value);
					this.SendPropertyChanging();
					this._courseName = value;
					this.SendPropertyChanged("courseName");
					this.OncourseNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_shortForm", DbType="VarChar(255) NOT NULL", CanBeNull=false)]
		public string shortForm
		{
			get
			{
				return this._shortForm;
			}
			set
			{
				if ((this._shortForm != value))
				{
					this.OnshortFormChanging(value);
					this.SendPropertyChanging();
					this._shortForm = value;
					this.SendPropertyChanged("shortForm");
					this.OnshortFormChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_creditHours", DbType="Int NOT NULL")]
		public int creditHours
		{
			get
			{
				return this._creditHours;
			}
			set
			{
				if ((this._creditHours != value))
				{
					this.OncreditHoursChanging(value);
					this.SendPropertyChanging();
					this._creditHours = value;
					this.SendPropertyChanged("creditHours");
					this.OncreditHoursChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="course_lecturer_course", Storage="_lecturer_courses", ThisKey="courseCode,courseID", OtherKey="courseCode,courseID")]
		public EntitySet<lecturer_course> lecturer_courses
		{
			get
			{
				return this._lecturer_courses;
			}
			set
			{
				this._lecturer_courses.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="course_course_offered", Storage="_course_offereds", ThisKey="courseCode,courseID", OtherKey="courseCode,courseID")]
		public EntitySet<course_offered> course_offereds
		{
			get
			{
				return this._course_offereds;
			}
			set
			{
				this._course_offereds.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_lecturer_courses(lecturer_course entity)
		{
			this.SendPropertyChanging();
			entity.course = this;
		}
		
		private void detach_lecturer_courses(lecturer_course entity)
		{
			this.SendPropertyChanging();
			entity.course = null;
		}
		
		private void attach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.course = this;
		}
		
		private void detach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.course = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.lecturer")]
	public partial class lecturer : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _lecturer_ID;
		
		private string _lecturerName;
		
		private EntitySet<lecturer_course> _lecturer_courses;
		
		private EntitySet<course_offered> _course_offereds;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onlecturer_IDChanging(int value);
    partial void Onlecturer_IDChanged();
    partial void OnlecturerNameChanging(string value);
    partial void OnlecturerNameChanged();
    #endregion
		
		public lecturer()
		{
			this._lecturer_courses = new EntitySet<lecturer_course>(new Action<lecturer_course>(this.attach_lecturer_courses), new Action<lecturer_course>(this.detach_lecturer_courses));
			this._course_offereds = new EntitySet<course_offered>(new Action<course_offered>(this.attach_course_offereds), new Action<course_offered>(this.detach_course_offereds));
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lecturer_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int lecturer_ID
		{
			get
			{
				return this._lecturer_ID;
			}
			set
			{
				if ((this._lecturer_ID != value))
				{
					this.Onlecturer_IDChanging(value);
					this.SendPropertyChanging();
					this._lecturer_ID = value;
					this.SendPropertyChanged("lecturer_ID");
					this.Onlecturer_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lecturerName", DbType="NChar(50)")]
		public string lecturerName
		{
			get
			{
				return this._lecturerName;
			}
			set
			{
				if ((this._lecturerName != value))
				{
					this.OnlecturerNameChanging(value);
					this.SendPropertyChanging();
					this._lecturerName = value;
					this.SendPropertyChanged("lecturerName");
					this.OnlecturerNameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="lecturer_lecturer_course", Storage="_lecturer_courses", ThisKey="lecturer_ID", OtherKey="lecturer_ID")]
		public EntitySet<lecturer_course> lecturer_courses
		{
			get
			{
				return this._lecturer_courses;
			}
			set
			{
				this._lecturer_courses.Assign(value);
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="lecturer_course_offered", Storage="_course_offereds", ThisKey="lecturer_ID", OtherKey="lecturer_ID")]
		public EntitySet<course_offered> course_offereds
		{
			get
			{
				return this._course_offereds;
			}
			set
			{
				this._course_offereds.Assign(value);
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
		
		private void attach_lecturer_courses(lecturer_course entity)
		{
			this.SendPropertyChanging();
			entity.lecturer = this;
		}
		
		private void detach_lecturer_courses(lecturer_course entity)
		{
			this.SendPropertyChanging();
			entity.lecturer = null;
		}
		
		private void attach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.lecturer = this;
		}
		
		private void detach_course_offereds(course_offered entity)
		{
			this.SendPropertyChanging();
			entity.lecturer = null;
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.lecturer_course")]
	public partial class lecturer_course : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _lc_ID;
		
		private int _lecturer_ID;
		
		private int _courseID;
		
		private string _courseCode;
		
		private EntityRef<course> _course;
		
		private EntityRef<lecturer> _lecturer;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void Onlc_IDChanging(int value);
    partial void Onlc_IDChanged();
    partial void Onlecturer_IDChanging(int value);
    partial void Onlecturer_IDChanged();
    partial void OncourseIDChanging(int value);
    partial void OncourseIDChanged();
    partial void OncourseCodeChanging(string value);
    partial void OncourseCodeChanged();
    #endregion
		
		public lecturer_course()
		{
			this._course = default(EntityRef<course>);
			this._lecturer = default(EntityRef<lecturer>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lc_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int lc_ID
		{
			get
			{
				return this._lc_ID;
			}
			set
			{
				if ((this._lc_ID != value))
				{
					this.Onlc_IDChanging(value);
					this.SendPropertyChanging();
					this._lc_ID = value;
					this.SendPropertyChanged("lc_ID");
					this.Onlc_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lecturer_ID", DbType="Int NOT NULL")]
		public int lecturer_ID
		{
			get
			{
				return this._lecturer_ID;
			}
			set
			{
				if ((this._lecturer_ID != value))
				{
					if (this._lecturer.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onlecturer_IDChanging(value);
					this.SendPropertyChanging();
					this._lecturer_ID = value;
					this.SendPropertyChanged("lecturer_ID");
					this.Onlecturer_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseID", DbType="Int NOT NULL")]
		public int courseID
		{
			get
			{
				return this._courseID;
			}
			set
			{
				if ((this._courseID != value))
				{
					if (this._course.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OncourseIDChanging(value);
					this.SendPropertyChanging();
					this._courseID = value;
					this.SendPropertyChanged("courseID");
					this.OncourseIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseCode", DbType="VarChar(5) NOT NULL", CanBeNull=false)]
		public string courseCode
		{
			get
			{
				return this._courseCode;
			}
			set
			{
				if ((this._courseCode != value))
				{
					if (this._course.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OncourseCodeChanging(value);
					this.SendPropertyChanging();
					this._courseCode = value;
					this.SendPropertyChanged("courseCode");
					this.OncourseCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="course_lecturer_course", Storage="_course", ThisKey="courseCode,courseID", OtherKey="courseCode,courseID", IsForeignKey=true)]
		public course course
		{
			get
			{
				return this._course.Entity;
			}
			set
			{
				course previousValue = this._course.Entity;
				if (((previousValue != value) 
							|| (this._course.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._course.Entity = null;
						previousValue.lecturer_courses.Remove(this);
					}
					this._course.Entity = value;
					if ((value != null))
					{
						value.lecturer_courses.Add(this);
						this._courseCode = value.courseCode;
						this._courseID = value.courseID;
					}
					else
					{
						this._courseCode = default(string);
						this._courseID = default(int);
					}
					this.SendPropertyChanged("course");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="lecturer_lecturer_course", Storage="_lecturer", ThisKey="lecturer_ID", OtherKey="lecturer_ID", IsForeignKey=true)]
		public lecturer lecturer
		{
			get
			{
				return this._lecturer.Entity;
			}
			set
			{
				lecturer previousValue = this._lecturer.Entity;
				if (((previousValue != value) 
							|| (this._lecturer.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._lecturer.Entity = null;
						previousValue.lecturer_courses.Remove(this);
					}
					this._lecturer.Entity = value;
					if ((value != null))
					{
						value.lecturer_courses.Add(this);
						this._lecturer_ID = value.lecturer_ID;
					}
					else
					{
						this._lecturer_ID = default(int);
					}
					this.SendPropertyChanged("lecturer");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.course_offered")]
	public partial class course_offered : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _semesterID;
		
		private string _courseCode;
		
		private int _courseID;
		
		private int _lecturer_ID;
		
		private int _course_offered_ID;
		
		private EntityRef<course> _course;
		
		private EntityRef<year_semester> _year_semester;
		
		private EntityRef<lecturer> _lecturer;
		
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnsemesterIDChanging(int value);
    partial void OnsemesterIDChanged();
    partial void OncourseCodeChanging(string value);
    partial void OncourseCodeChanged();
    partial void OncourseIDChanging(int value);
    partial void OncourseIDChanged();
    partial void Onlecturer_IDChanging(int value);
    partial void Onlecturer_IDChanged();
    partial void Oncourse_offered_IDChanging(int value);
    partial void Oncourse_offered_IDChanged();
    #endregion
		
		public course_offered()
		{
			this._course = default(EntityRef<course>);
			this._year_semester = default(EntityRef<year_semester>);
			this._lecturer = default(EntityRef<lecturer>);
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_semesterID", DbType="Int NOT NULL")]
		public int semesterID
		{
			get
			{
				return this._semesterID;
			}
			set
			{
				if ((this._semesterID != value))
				{
					if (this._year_semester.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OnsemesterIDChanging(value);
					this.SendPropertyChanging();
					this._semesterID = value;
					this.SendPropertyChanged("semesterID");
					this.OnsemesterIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseCode", DbType="VarChar(5) NOT NULL", CanBeNull=false)]
		public string courseCode
		{
			get
			{
				return this._courseCode;
			}
			set
			{
				if ((this._courseCode != value))
				{
					if (this._course.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OncourseCodeChanging(value);
					this.SendPropertyChanging();
					this._courseCode = value;
					this.SendPropertyChanged("courseCode");
					this.OncourseCodeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_courseID", DbType="Int NOT NULL")]
		public int courseID
		{
			get
			{
				return this._courseID;
			}
			set
			{
				if ((this._courseID != value))
				{
					if (this._course.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.OncourseIDChanging(value);
					this.SendPropertyChanging();
					this._courseID = value;
					this.SendPropertyChanged("courseID");
					this.OncourseIDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lecturer_ID", DbType="Int NOT NULL")]
		public int lecturer_ID
		{
			get
			{
				return this._lecturer_ID;
			}
			set
			{
				if ((this._lecturer_ID != value))
				{
					if (this._lecturer.HasLoadedOrAssignedValue)
					{
						throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
					}
					this.Onlecturer_IDChanging(value);
					this.SendPropertyChanging();
					this._lecturer_ID = value;
					this.SendPropertyChanged("lecturer_ID");
					this.Onlecturer_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_course_offered_ID", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int course_offered_ID
		{
			get
			{
				return this._course_offered_ID;
			}
			set
			{
				if ((this._course_offered_ID != value))
				{
					this.Oncourse_offered_IDChanging(value);
					this.SendPropertyChanging();
					this._course_offered_ID = value;
					this.SendPropertyChanged("course_offered_ID");
					this.Oncourse_offered_IDChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="course_course_offered", Storage="_course", ThisKey="courseCode,courseID", OtherKey="courseCode,courseID", IsForeignKey=true)]
		public course course
		{
			get
			{
				return this._course.Entity;
			}
			set
			{
				course previousValue = this._course.Entity;
				if (((previousValue != value) 
							|| (this._course.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._course.Entity = null;
						previousValue.course_offereds.Remove(this);
					}
					this._course.Entity = value;
					if ((value != null))
					{
						value.course_offereds.Add(this);
						this._courseCode = value.courseCode;
						this._courseID = value.courseID;
					}
					else
					{
						this._courseCode = default(string);
						this._courseID = default(int);
					}
					this.SendPropertyChanged("course");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="year_semester_course_offered", Storage="_year_semester", ThisKey="semesterID", OtherKey="semesterID", IsForeignKey=true)]
		public year_semester year_semester
		{
			get
			{
				return this._year_semester.Entity;
			}
			set
			{
				year_semester previousValue = this._year_semester.Entity;
				if (((previousValue != value) 
							|| (this._year_semester.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._year_semester.Entity = null;
						previousValue.course_offereds.Remove(this);
					}
					this._year_semester.Entity = value;
					if ((value != null))
					{
						value.course_offereds.Add(this);
						this._semesterID = value.semesterID;
					}
					else
					{
						this._semesterID = default(int);
					}
					this.SendPropertyChanged("year_semester");
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.AssociationAttribute(Name="lecturer_course_offered", Storage="_lecturer", ThisKey="lecturer_ID", OtherKey="lecturer_ID", IsForeignKey=true)]
		public lecturer lecturer
		{
			get
			{
				return this._lecturer.Entity;
			}
			set
			{
				lecturer previousValue = this._lecturer.Entity;
				if (((previousValue != value) 
							|| (this._lecturer.HasLoadedOrAssignedValue == false)))
				{
					this.SendPropertyChanging();
					if ((previousValue != null))
					{
						this._lecturer.Entity = null;
						previousValue.course_offereds.Remove(this);
					}
					this._lecturer.Entity = value;
					if ((value != null))
					{
						value.course_offereds.Add(this);
						this._lecturer_ID = value.lecturer_ID;
					}
					else
					{
						this._lecturer_ID = default(int);
					}
					this.SendPropertyChanged("lecturer");
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591